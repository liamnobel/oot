glabel func_809999A0
/* 01220 809999A0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01224 809999A4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01228 809999A8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0122C 809999AC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01230 809999B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01234 809999B4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01238 809999B8 24052025 */  addiu   $a1, $zero, 0x2025         ## $a1 = 00002025
/* 0123C 809999BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01240 809999C0 0C26664E */  jal     func_80999938              
/* 01244 809999C4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01248 809999C8 10400022 */  beq     $v0, $zero, .L80999A54     
/* 0124C 809999CC 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 01250 809999D0 8FAE0034 */  lw      $t6, 0x0034($sp)           
/* 01254 809999D4 3C0F8013 */  lui     $t7, %hi(D_801333E8)
/* 01258 809999D8 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 0125C 809999DC 8DC21C44 */  lw      $v0, 0x1C44($t6)           ## 00001C44
/* 01260 809999E0 25EF33E8 */  addiu   $t7, %lo(D_801333E8)
/* 01264 809999E4 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 01268 809999E8 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0126C 809999EC 24042826 */  addiu   $a0, $zero, 0x2826         ## $a0 = 00002826
/* 01270 809999F0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01274 809999F4 244500E4 */  addiu   $a1, $v0, 0x00E4           ## $a1 = 000000E4
/* 01278 809999F8 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 0127C 809999FC AFA2002C */  sw      $v0, 0x002C($sp)           
/* 01280 80999A00 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01284 80999A04 240525E7 */  addiu   $a1, $zero, 0x25E7         ## $a1 = 000025E7
/* 01288 80999A08 240603E7 */  addiu   $a2, $zero, 0x03E7         ## $a2 = 000003E7
/* 0128C 80999A0C 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 01290 80999A10 0C02003E */  jal     OnePointCutscene_Init              
/* 01294 80999A14 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01298 80999A18 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0129C 80999A1C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 012A0 80999A20 0C00B7D5 */  jal     func_8002DF54              
/* 012A4 80999A24 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 012A8 80999A28 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 012AC 80999A2C C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 012B0 80999A30 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 012B4 80999A34 3C05809A */  lui     $a1, %hi(func_80999A68)    ## $a1 = 809A0000
/* 012B8 80999A38 E4640450 */  swc1    $f4, 0x0450($v1)           ## 00000450
/* 012BC 80999A3C C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 012C0 80999A40 24A59A68 */  addiu   $a1, $a1, %lo(func_80999A68) ## $a1 = 80999A68
/* 012C4 80999A44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012C8 80999A48 E4660458 */  swc1    $f6, 0x0458($v1)           ## 00000458
/* 012CC 80999A4C 0C2661E0 */  jal     func_80998780              
/* 012D0 80999A50 A61801B2 */  sh      $t8, 0x01B2($s0)           ## 000001B2
.L80999A54:
/* 012D4 80999A54 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 012D8 80999A58 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 012DC 80999A5C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 012E0 80999A60 03E00008 */  jr      $ra                        
/* 012E4 80999A64 00000000 */  nop
