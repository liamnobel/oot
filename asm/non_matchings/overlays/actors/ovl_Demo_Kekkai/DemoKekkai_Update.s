.late_rodata
glabel D_8098E2C0
    .float 0.99

.text
glabel DemoKekkai_Update
/* 00620 8098D5F0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00624 8098D5F4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00628 8098D5F8 AFB20028 */  sw      $s2, 0x0028($sp)           
/* 0062C 8098D5FC AFB10024 */  sw      $s1, 0x0024($sp)           
/* 00630 8098D600 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00634 8098D604 3C018099 */  lui     $at, %hi(D_8098E2C0)       ## $at = 80990000
/* 00638 8098D608 C424E2C0 */  lwc1    $f4, %lo(D_8098E2C0)($at)  
/* 0063C 8098D60C C48601E4 */  lwc1    $f6, 0x01E4($a0)           ## 000001E4
/* 00640 8098D610 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00644 8098D614 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00648 8098D618 4606203C */  c.lt.s  $f4, $f6                   
/* 0064C 8098D61C 00000000 */  nop
/* 00650 8098D620 45020027 */  bc1fl   .L8098D6C0                 
/* 00654 8098D624 8E1901F8 */  lw      $t9, 0x01F8($s0)           ## 000001F8
/* 00658 8098D628 908E015C */  lbu     $t6, 0x015C($a0)           ## 0000015C
/* 0065C 8098D62C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 00660 8098D630 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00664 8098D634 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 00668 8098D638 55E00006 */  bnel    $t7, $zero, .L8098D654     
/* 0066C 8098D63C 44810000 */  mtc1    $at, $f0                   ## $f0 = 6.00
/* 00670 8098D640 909801A8 */  lbu     $t8, 0x01A8($a0)           ## 000001A8
/* 00674 8098D644 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 00678 8098D648 53200008 */  beql    $t9, $zero, .L8098D66C     
/* 0067C 8098D64C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00680 8098D650 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.00
.L8098D654:
/* 00684 8098D654 8607008A */  lh      $a3, 0x008A($s0)           ## 0000008A
/* 00688 8098D658 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0068C 8098D65C 44060000 */  mfc1    $a2, $f0                   
/* 00690 8098D660 0C00BDC7 */  jal     func_8002F71C              
/* 00694 8098D664 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00698 8098D668 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L8098D66C:
/* 0069C 8098D66C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 006A0 8098D670 02219021 */  addu    $s2, $s1, $at              
/* 006A4 8098D674 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 006A8 8098D678 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 006AC 8098D67C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 006B0 8098D680 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 006B4 8098D684 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 006B8 8098D688 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 006BC 8098D68C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 006C0 8098D690 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOC
/* 006C4 8098D694 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 006C8 8098D698 26060198 */  addiu   $a2, $s0, 0x0198           ## $a2 = 00000198
/* 006CC 8098D69C AFA60030 */  sw      $a2, 0x0030($sp)           
/* 006D0 8098D6A0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 006D4 8098D6A4 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 006D8 8098D6A8 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 006DC 8098D6AC 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 006E0 8098D6B0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 006E4 8098D6B4 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOC
/* 006E8 8098D6B8 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 006EC 8098D6BC 8E1901F8 */  lw      $t9, 0x01F8($s0)           ## 000001F8
.L8098D6C0:
/* 006F0 8098D6C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006F4 8098D6C4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 006F8 8098D6C8 0320F809 */  jalr    $ra, $t9                   
/* 006FC 8098D6CC 00000000 */  nop
/* 00700 8098D6D0 C60801EC */  lwc1    $f8, 0x01EC($s0)           ## 000001EC
/* 00704 8098D6D4 C60A01F0 */  lwc1    $f10, 0x01F0($s0)          ## 000001F0
/* 00708 8098D6D8 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 0070C 8098D6DC 44811000 */  mtc1    $at, $f2                   ## $f2 = 65536.00
/* 00710 8098D6E0 460A4400 */  add.s   $f16, $f8, $f10            
/* 00714 8098D6E4 E61001EC */  swc1    $f16, 0x01EC($s0)          ## 000001EC
/* 00718 8098D6E8 C60001EC */  lwc1    $f0, 0x01EC($s0)           ## 000001EC
/* 0071C 8098D6EC 4600103C */  c.lt.s  $f2, $f0                   
/* 00720 8098D6F0 00000000 */  nop
/* 00724 8098D6F4 45020004 */  bc1fl   .L8098D708                 
/* 00728 8098D6F8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0072C 8098D6FC 46020481 */  sub.s   $f18, $f0, $f2             
/* 00730 8098D700 E61201EC */  swc1    $f18, 0x01EC($s0)          ## 000001EC
/* 00734 8098D704 8FBF002C */  lw      $ra, 0x002C($sp)           
.L8098D708:
/* 00738 8098D708 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0073C 8098D70C 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 00740 8098D710 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 00744 8098D714 03E00008 */  jr      $ra                        
/* 00748 8098D718 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
