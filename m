Return-Path: <sheraz.ali@iwave.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D79ECE00DEB; Mon, 11 Nov 2019 20:25:33 -0800 (PST)
X-Greylist: delayed 423 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 Nov 2019 20:25:29 PST
Received: from dc1.iwave.net (unknown [182.73.142.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 734A9E00C46
	for <yocto@yoctoproject.org>; Mon, 11 Nov 2019 20:25:29 -0800 (PST)
Received: from [192.168.1.131] (unknown [192.168.1.131])
	by dc1.iwave.net (Postfix) with ESMTP id 6A24F1806A3D4
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 09:48:19 +0530 (IST)
To: yocto@yoctoproject.org
From: Sheraz Ali <sheraz.ali@iwave.net>
Message-ID: <9753c692-17c9-3b27-8c3f-2fdfeac869e6@iwave.net>
Date: Tue, 12 Nov 2019 09:48:19 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 12 Nov 2019 05:18:47 -0800
Subject: Error Building Valgrind_3.15 for yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 12 Nov 2019 04:25:34 -0000
X-Groupsio-MsgNum: 47195
Content-Type: multipart/mixed; boundary="------------44ED2778D79CB5136D74C2F4"
Content-Language: en-US

--------------44ED2778D79CB5136D74C2F4
Content-Type: multipart/alternative;
 boundary="------------1C1EADE794D90F12E1998BCA"

--------------1C1EADE794D90F12E1998BCA
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Sir,

         I want to add valgrind to my yocto i am using valgrind version 
(3.15.0-r0 ) i have attached the valgrind source and error log for your 
reference.

This is the Build Configuration for which i am trying to build valgrind

Build Configuration:
BB_VERSION        = "1.22.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-14.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "iwg22m"
DISTRO            = "poky"
DISTRO_VERSION    = "1.6.1"
TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa7"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "tmp:c4f1f0f491f988901bfd6965f7d10f60cb94a76f"
meta-renesas
meta-rzg1         = "tmp:19bf1ed97d04009722bb88a780268822ee60ff83"
meta-oe
meta-multimedia   = "tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"
meta-linaro-toolchain = "tmp:8a0601723c06fdb75e62aa0f0cf15fc9d7d90167"
meta-networking   = "tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"

I am getting the following error can you suggest me what to do

/*arm-poky-linux-gnueabi-gcc: error: unrecognized argument in option 
'-march=armv7ve'*/
/*arm-poky-linux-gnueabi-gcc: note: valid arguments to '-march=' are: 
armv2 armv2a armv3 armv3m armv4 armv4t armv5 armv5e armv5t armv5te armv6 
armv6-m armv6j armv6k armv6s-m armv6t2 armv6z armv6zk armv7 armv7-a 
armv7-m armv7-r armv7e-m armv8-a armv8-a+crc iwmmxt iwmmxt2 native*/
make[5]: *** [intdiv-intdiv.o] Error 1
make[5]: Leaving directory 
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build/none/tests/arm'
make[4]: *** [check-am] Error 2
make[4]: Leaving directory 
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build/none/tests/arm'
make[3]: *** [check-recursive] Error 1
make[3]: Leaving directory 
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build/none/tests'
make[2]: *** [check-recursive] Error 1
make[2]: Leaving directory 
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build/none'
make[1]: *** [check-recursive] Error 1
make[1]: Leaving directory 
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build'
make: *** [check] Error 2
make: Leaving directory 
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build'
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_compile_ptest_base (log file is located at 
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/temp/log.do_compile_ptest_base.29480)

Thanks and Regards
Sheraz Ali Shah

--------------1C1EADE794D90F12E1998BCA
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Sir,</p>
    <p>        I want to add valgrind to my yocto i am using valgrind
      version (3.15.0-r0 ) i have attached the valgrind source and error
      log for your reference.</p>
    <p>This is the Build Configuration for which i am trying to build
      valgrind<br>
    </p>
    <p>Build Configuration:<br>
      BB_VERSION        = "1.22.0"<br>
      BUILD_SYS         = "x86_64-linux"<br>
      NATIVELSBSTRING   = "Ubuntu-14.04"<br>
      TARGET_SYS        = "arm-poky-linux-gnueabi"<br>
      MACHINE           = "iwg22m"<br>
      DISTRO            = "poky"<br>
      DISTRO_VERSION    = "1.6.1"<br>
      TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa7"<br>
      TARGET_FPU        = "vfp-neon"<br>
      meta              <br>
      meta-yocto        <br>
      meta-yocto-bsp    = "tmp:c4f1f0f491f988901bfd6965f7d10f60cb94a76f"<br>
      meta-renesas      <br>
      meta-rzg1         = "tmp:19bf1ed97d04009722bb88a780268822ee60ff83"<br>
      meta-oe           <br>
      meta-multimedia   = "tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"<br>
      meta-linaro-toolchain =
      "tmp:8a0601723c06fdb75e62aa0f0cf15fc9d7d90167"<br>
      meta-networking   = "tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"</p>
    <p>I am getting the following error can you suggest me what to do <br>
    </p>
    <p><i><b>arm-poky-linux-gnueabi-gcc: error: unrecognized argument in
          option '-march=armv7ve'</b></i><br>
      <i><b>arm-poky-linux-gnueabi-gcc: note: valid arguments to
          '-march=' are: armv2 armv2a armv3 armv3m armv4 armv4t armv5
          armv5e armv5t armv5te armv6 armv6-m armv6j armv6k armv6s-m
          armv6t2 armv6z armv6zk armv7 armv7-a armv7-m armv7-r armv7e-m
          armv8-a armv8-a+crc iwmmxt iwmmxt2 native</b></i><br>
      make[5]: *** [intdiv-intdiv.o] Error 1<br>
      make[5]: Leaving directory
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build/none/tests/arm'<br>
      make[4]: *** [check-am] Error 2<br>
      make[4]: Leaving directory
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build/none/tests/arm'<br>
      make[3]: *** [check-recursive] Error 1<br>
      make[3]: Leaving directory
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build/none/tests'<br>
      make[2]: *** [check-recursive] Error 1<br>
      make[2]: Leaving directory
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build/none'<br>
      make[1]: *** [check-recursive] Error 1<br>
      make[1]: Leaving directory
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build'<br>
      make: *** [check] Error 2<br>
      make: Leaving directory
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build'<br>
      ERROR: oe_runmake failed<br>
      WARNING: exit code 1 from a shell command.<br>
      ERROR: Function failed: do_compile_ptest_base (log file is located
      at
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/temp/log.do_compile_ptest_base.29480)</p>
    Thanks and Regards<br>
    Sheraz Ali Shah
  </body>
</html>

--------------1C1EADE794D90F12E1998BCA--

--------------44ED2778D79CB5136D74C2F4
Content-Type: application/zip;
 name="valgrind.zip"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="valgrind.zip"

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
sUzCkPFqySvmFxznWTaqPz6FeOH/MWm9RrCa55it5pRivSY40YY3g5A4tw+Ws6YJtxeH7GC0dWJP
klk03RuDRlccQiptpB191UZ1pfvHQ78xJ5lApw58nkZkdqLVU6mYlOVeYVme4fQUz/7Sbz6+e3Xp
aZ/+SB40OZjiw+OHUMSbpo2Dt9xMxgfraz4fDewxnXrw44zgJwEOxE6tfuF3C5KENA0pIb8BUEsD
BBQAAAAIABAgaE/N6R0HBQIAAJkDAABRABwAdmFsZ3JpbmQvdmFsZ3JpbmQvMDAwMS1tZW1jaGVj
ay1hcm02NC1EZWZpbmUtX19USFJPVy1pZi1ub3QtYWxyZWFkeS1kZWZpbmVkLnBhdGNoVVQJAAMH
m8RdGBjJXXV4CwABBOgDAAAE6AMAAI1SW2vbMBR+16/4oA9rSexItnPzSslYKaVjbDQdfRgjyPZx
rNaWgyWnDezH7ySl3eVlMcKgTzrf5ehcdW2DOJHzIo/HuRpnmUrymR5H4yiez+QkjqJJMiM5netM
4XNrsaQN1BRSpoeFSEolrpgmxaeKGtzqB5x3+iF85N1i3WhTh3nbXIhL7SnFPRVDjHHT11zJPGqa
qihNYgRyKqVY9tkD5T7F968f7j5eQ43iH2ioySvKH0e6ayZJiksqjSWsVnfXt1/uYUrY1kPXHeli
h+JwWghxTfXGgbU3pjZ2jSfjKzS9q/FUUfdHvXup37JVndUkxNKsmSFoyzLIdv/LFQSB+LZxntWb
YOm1710KztEY7/c2ftv35Lx7CRGwo/555HJd6y6s8BMJBvwJKJSmJuSVtut9rxIY66jzprXudHAm
RGHKEkGwNmx5dAx3dswtYWxBz5hLOZupSRjOqJRjWUJJOUmSfcjj1ASHOFJxsUCgouEEA/4ricVC
4MTYvO4LwrnbuZHfbciF1cW/eNNoe4DF4MSUbLx8fUwGir+mgwGy3DLBrR2NsGQewhOhd4Tto1n1
1jhfhNVwD+bavvN4k3o9uwiBZbu/UOktwbcHqoJyzsHbigeo7TtH9ZbdCtCzp86ibnnmjPVgxxy5
xukbsloxZtshwjA8e3X6npsMEYUqDiMhfgFQSwMEFAAAAAgAECBoT5KEKs/lBAAAjQ8AAFEAHAB2
YWxncmluZC92YWxncmluZC8wMDAxLW1ha2VmaWxlcy1Ecm9wLXNldHRpbmctbWNwdS10by1jb3J0
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
AAAE6AMAAFBLAQIeAxQAAAAIABAgaE9pM9bnNwMAAMMGAABJABgAAAAAAAEAAAC0gb4NAAB2YWxn
cmluZC92YWxncmluZC92YWxncmluZC1tYWtlLWxkLVhYWC5zby1zdHJsZW4taW50ZXJjZXB0LW9w
dGlvbmFsLnBhdGNoVVQFAAMHm8RddXgLAAEE6AMAAAToAwAAUEsBAh4DFAAAAAgAECBoT/ttpiLZ
AgAAgwYAAEkAGAAAAAAAAQAAALSBeBEAAHZhbGdyaW5kL3ZhbGdyaW5kL3VzZS1hcHByb3ByaWF0
ZS1tYXJjaC1tY3B1LW1mcHUtZm9yLUFSTS10ZXN0LWFwcHMucGF0Y2hVVAUAAwebxF11eAsAAQTo
AwAABOgDAABQSwECHgMUAAAACAAQIGhPdxGrSMsCAACgBgAAGwAYAAAAAAABAAAA7YHUFAAAdmFs
Z3JpbmQvdmFsZ3JpbmQvcnVuLXB0ZXN0VVQFAAMHm8RddXgLAAEE6AMAAAToAwAAUEsBAh4DFAAA
AAgAECBoT42q4hiSBQAAPxgAACQAGAAAAAAAAQAAALSB9BcAAHZhbGdyaW5kL3ZhbGdyaW5kL3Jl
bW92ZS1mb3ItYWFyY2g2NFVUBQADB5vEXXV4CwABBOgDAAAE6AMAAFBLAQIeAxQAAAAIABAgaE+E
cWSgkAMAAIgKAAAnABgAAAAAAAEAAAC0geQdAAB2YWxncmluZC92YWxncmluZC9maXhlZC1wZXJs
LXBhdGgucGF0Y2hVVAUAAwebxF11eAsAAQToAwAABOgDAABQSwECHgMUAAAACAAQIGhPr/q3UZYC
AAAmBQAARQAYAAAAAAABAAAAtIHVIQAAdmFsZ3JpbmQvdmFsZ3JpbmQvYXZvaWQtbmVvbi1mb3It
dGFyZ2V0cy13aGljaC1kb24tdC1zdXBwb3J0LWl0LnBhdGNoVVQFAAMHm8RddXgLAAEE6AMAAATo
AwAAUEsBAh4DFAAAAAgAECBoT3UG/tNVBQAA+QwAAEgAGAAAAAAAAQAAALSB6iQAAHZhbGdyaW5k
L3ZhbGdyaW5kL0FkZGVkLXN1cHBvcnQtZm9yLVBQQy1pbnN0cnVjdGlvbnMtbWZhdGJ1LW1mYXRi
bC5wYXRjaFVUBQADB5vEXXV4CwABBOgDAAAE6AMAAFBLAQIeAxQAAAAIABAgaE/aSDCn7AEAAHID
AABRABgAAAAAAAEAAAC0gcEqAAB2YWxncmluZC92YWxncmluZC8wMDA2LXB0aF9kZXRhY2hlZDMu
Yy1EZXJlZmVyZW5jZS1wdGhyZWFkX3QtYmVmb3JlLWFkZGluZy0ucGF0Y2hVVAUAAwebxF11eAsA
AQToAwAABOgDAABQSwECHgMUAAAACAAQIGhPaaGfU8oBAAA8AwAATAAYAAAAAAABAAAAtIE4LQAA
dmFsZ3JpbmQvdmFsZ3JpbmQvMDAwNS10YzIwX3ZlcmlmeXdyYXAuYy1GYWtlLV9fR0xJQkNfUFJF
UkVRLXdpdGgtbXVzbC5wYXRjaFVUBQADB5vEXXV4CwABBOgDAAAE6AMAAFBLAQIeAxQAAAAIABAg
aE9Z+PfVLgwAADclAABMABgAAAAAAAEAAAC0gYgvAAB2YWxncmluZC92YWxncmluZC8wMDA1LU1v
ZGlmeS12Z190ZXN0LXdyYXBwZXItdG8tc3VwcG9ydC1QVEVTVC1mb3JtYXRzLnBhdGNoVVQFAAMH
m8RddXgLAAEE6AMAAAToAwAAUEsBAh4DFAAAAAgAECBoT6UO9DUgAgAAKAQAAEQAGAAAAAAAAQAA
ALSBPDwAAHZhbGdyaW5kL3ZhbGdyaW5kLzAwMDQtcHRoX2F0Zm9yazEuYy1EZWZpbmUtZXJyb3It
QVBJLWZvci1tdXNsLnBhdGNoVVQFAAMHm8RddXgLAAEE6AMAAAToAwAAUEsBAh4DFAAAAAgAECBo
TzuSe4JYBgAARh8AADMAGAAAAAAAAQAAALSB2j4AAHZhbGdyaW5kL3ZhbGdyaW5kLzAwMDQtRml4
LW91dC1vZi10cmVlLWJ1aWxkcy5wYXRjaFVUBQADB5vEXXV4CwABBOgDAAAE6AMAAFBLAQIeAxQA
AAAIABAgaE9Vt3zKbgMAAO8HAABRABgAAAAAAAEAAAC0gZ9FAAB2YWxncmluZC92YWxncmluZC8w
MDAzLXRlc3RzLXNlZ19vdmVycmlkZS1SZXBsYWNlLV9fbW9kaWZ5X2xkdC13aXRoLXN5c2NhbGwu
cGF0Y2hVVAUAAwebxF11eAsAAQToAwAABOgDAABQSwECHgMUAAAACAAQIGhPL0gZqzcCAADmBAAA
SAAYAAAAAAABAAAAtIGYSQAAdmFsZ3JpbmQvdmFsZ3JpbmQvMDAwMy1jb3JyZWN0LWluY2x1ZGUt
ZGlyZWN0aXZlLXBhdGgtZm9yLWNvbmZpZy5oLnBhdGNoVVQFAAMHm8RddXgLAAEE6AMAAAToAwAA
UEsBAh4DFAAAAAgAECBoT9tO2q5TAgAAJgQAAEUAGAAAAAAAAQAAALSBUUwAAHZhbGdyaW5kL3Zh
bGdyaW5kLzAwMDItdmFsZ3JpbmQtYWRqdXN0LXN0ZF9saXN0LWV4cGVjdGVkLW91dHB1dC5wYXRj
aFVUBQADB5vEXXV4CwABBOgDAAAE6AMAAFBLAQIeAxQAAAAIABAgaE86GRU9+gEAAH8DAABHABgA
AAAAAAEAAAC0gSNPAAB2YWxncmluZC92YWxncmluZC8wMDAyLW1lbWNoZWNrLXg4Ni1EZWZpbmUt
X19USFJPVy1pZi1ub3QtZGVmaW5lZC5wYXRjaFVUBQADB5vEXXV4CwABBOgDAAAE6AMAAFBLAQIe
AxQAAAAIABAgaE+TYE7u5wIAAI0FAABDABgAAAAAAAEAAAC0gZ5RAAB2YWxncmluZC92YWxncmlu
ZC8wMDAyLWNvbnRleHQtQVBJcy1hcmUtbm90LWF2YWlsYWJsZS1vbi1tdXNsLnBhdGNoVVQFAAMH
m8RddXgLAAEE6AMAAAToAwAAUEsBAh4DFAAAAAgAECBoT97oGb3UAgAAjgUAAEkAGAAAAAAAAQAA
ALSBAlUAAHZhbGdyaW5kL3ZhbGdyaW5kLzAwMDEtdmFsZ3JpbmQtZmlsdGVyX3htbF9mcmFtZXMt
ZG8tbm90LWZpbHRlci11c3IucGF0Y2hVVAUAAwebxF11eAsAAQToAwAABOgDAABQSwECHgMUAAAA
CAAQIGhP8l+v7RICAABABAAARwAYAAAAAAABAAAAtIFZWAAAdmFsZ3JpbmQvdmFsZ3JpbmQvMDAw
MS1zdHJfdGVzdGVyLmMtTGltaXQtcmF3bWVtY2hyLXRlc3QtdG8tZ2xpYmMucGF0Y2hVVAUAAweb
xF11eAsAAQToAwAABOgDAABQSwECHgMUAAAACAAQIGhPpCelk9UBAABGAwAATQAYAAAAAAABAAAA
tIHsWgAAdmFsZ3JpbmQvdmFsZ3JpbmQvMDAwMS1zaWdxdWV1ZS1SZW5hbWUtX3NpZmllbGRzLXRv
LV9fc2lfZmllbGRzLW9uLW11c2wucGF0Y2hVVAUAAwebxF11eAsAAQToAwAABOgDAABQSwECHgMU
AAAACAAQIGhPzekdBwUCAACZAwAAUQAYAAAAAAABAAAAtIFIXQAAdmFsZ3JpbmQvdmFsZ3JpbmQv
MDAwMS1tZW1jaGVjay1hcm02NC1EZWZpbmUtX19USFJPVy1pZi1ub3QtYWxyZWFkeS1kZWZpbmVk
LnBhdGNoVVQFAAMHm8RddXgLAAEE6AMAAAToAwAAUEsBAh4DFAAAAAgAECBoT5KEKs/lBAAAjQ8A
AFEAGAAAAAAAAQAAALSB2F8AAHZhbGdyaW5kL3ZhbGdyaW5kLzAwMDEtbWFrZWZpbGVzLURyb3At
c2V0dGluZy1tY3B1LXRvLWNvcnRleC1hOC1vbi1hcm0tYXJjaC5wYXRjaFVUBQADB5vEXXV4CwAB
BOgDAAAE6AMAAFBLAQIeAxQAAAAIABAgaE8ctPVfDgQAANMJAABFABgAAAAAAAEAAAC0gUhlAAB2
YWxncmluZC92YWxncmluZC8wMDAxLWZpeC1vcGNvZGUtbm90LXN1cHBvcnRlZC1vbi1taXBzMzIt
bGludXgucGF0Y2hVVAUAAwebxF11eAsAAQToAwAABOgDAABQSwECHgMUAAAACAAQIGhPpKiQzY4C
AABnBgAARAAYAAAAAAABAAAAtIHVaQAAdmFsZ3JpbmQvdmFsZ3JpbmQvMDAwMS1hZGp1c3QtcGF0
aC1maWx0ZXItZm9yLTItbWVtY2hlY2stdGVzdHMucGF0Y2hVVAUAAwebxF11eAsAAQToAwAABOgD
AABQSwECHgMUAAAACAAQIGhPP4JPwJkBAAC3AgAARQAYAAAAAAABAAAAtIHhbAAAdmFsZ3JpbmQv
dmFsZ3JpbmQvMDAwMS1SZXR1cm4tYS12YWxpZC1leGl0X2NvZGUtZnJvbS12Z19yZWd0ZXN0LnBh
dGNoVVQFAAMHm8RddXgLAAEE6AMAAAToAwAAUEsBAh4DFAAAAAgAECBoTyX23n1yAwAA7wYAAFEA
GAAAAAAAAQAAALSB+W4AAHZhbGdyaW5kL3ZhbGdyaW5kLzAwMDEtUmVtb3ZlLXRlc3RzLXRoYXQt
ZmFpbC10by1idWlsZC1vbi1zb21lLVBQQzMyLWNvbmZpZy5wYXRjaFVUBQADB5vEXXV4CwABBOgD
AAAE6AMAAFBLAQIeAxQAAAAIABAgaE+lGl8VnwUAAAYWAABRABgAAAAAAAEAAAC0gfZyAAB2YWxn
cmluZC92YWxncmluZC8wMDAxLU1ha2UtbG9jYWwtZnVuY3Rpb25zLXN0YXRpYy10by1hdm9pZC1h
c3NlbWJsZXItZXJyb3IucGF0Y2hVVAUAAwebxF11eAsAAQToAwAABOgDAABQSwECHgMUAAAACAAQ
IGhPywtdVA4CAADGAwAARwAYAAAAAAABAAAAtIEgeQAAdmFsZ3JpbmQvdmFsZ3JpbmQvMDAwMS1H
dWFyZC1hZ2FpbnN0LV9fR0xJQkNfUFJFUkVRLWZvci1tdXNsLWxpYmMucGF0Y2hVVAUAAwebxF11
eAsAAQToAwAABOgDAABQSwUGAAAAAB8AHwAzEAAAr3sAAAAA

--------------44ED2778D79CB5136D74C2F4
Content-Type: text/x-log;
 name="valgrind.log"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="valgrind.log"

DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'common-linux',=
 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
DEBUG: Executing shell function do_compile_ptest_base
NOTE: make -w check
make: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M=
-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind=
/3.15.0-r0/build'
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/auxprogs/make_or_upd_vgversion_h /home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0
make  check-recursive
make[1]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build'
Making check in include
make[2]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/include'
make[2]: Nothing to be done for `check'.
make[2]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/include'
Making check in VEX
make[2]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/VEX'
make  check-am
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/VEX'
make[3]: Nothing to be done for `check-am'.
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/VEX'
make[2]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/VEX'
Making check in coregrind
make[2]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/coregrind'
make  check-am
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/coregrind'
mkdir -p ../.in_place; \
	for f in vgpreload_core-arm-linux.so  ; do \
	  rm -f ../.in_place/$f; \
	  ln -f -s ../coregrind/$f ../.in_place; \
	done
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
mkdir -p ../.in_place; \
	for f in ; do \
	  rm -f ../.in_place/$f.dSYM; \
	  ln -f -s ../coregrind/$f.dSYM ../.in_place; \
	done
mkdir -p ../.in_place; \
	for f in m_gdbserver/32bit-core-valgrind-s1.xml m_gdbserver/32bit-core-val=
grind-s2.xml m_gdbserver/32bit-core.xml m_gdbserver/32bit-linux-valgrind-s1=
.xml m_gdbserver/32bit-linux-valgrind-s2.xml m_gdbserver/32bit-linux.xml m_=
gdbserver/32bit-sse-valgrind-s1.xml m_gdbserver/32bit-sse-valgrind-s2.xml m=
_gdbserver/32bit-sse.xml m_gdbserver/64bit-avx-valgrind-s2.xml m_gdbserver/=
64bit-avx-valgrind-s1.xml m_gdbserver/64bit-avx.xml m_gdbserver/64bit-core-=
valgrind-s1.xml m_gdbserver/64bit-core-valgrind-s2.xml m_gdbserver/64bit-co=
re.xml m_gdbserver/64bit-linux-valgrind-s1.xml m_gdbserver/64bit-linux-valg=
rind-s2.xml m_gdbserver/64bit-linux.xml m_gdbserver/64bit-sse-valgrind-s1.x=
ml m_gdbserver/64bit-sse-valgrind-s2.xml m_gdbserver/64bit-sse.xml m_gdbser=
ver/amd64-avx-coresse-valgrind.xml m_gdbserver/amd64-avx-coresse.xml m_gdbs=
erver/amd64-avx-linux-valgrind.xml m_gdbserver/amd64-avx-linux.xml m_gdbser=
ver/amd64-coresse-valgrind.xml m_gdbserver/amd64-linux-valgrind.xml m_gdbse=
rver/arm-core-valgrind-s1.xml m_gdbserver/arm-core-valgrind-s2.xml m_gdbser=
ver/arm-core.xml m_gdbserver/arm-vfpv3-valgrind-s1.xml m_gdbserver/arm-vfpv=
3-valgrind-s2.xml m_gdbserver/arm-vfpv3.xml m_gdbserver/arm-with-vfpv3-valg=
rind.xml m_gdbserver/arm-with-vfpv3.xml m_gdbserver/i386-coresse-valgrind.x=
ml m_gdbserver/i386-linux-valgrind.xml m_gdbserver/power64-core-valgrind-s1=
.xml m_gdbserver/power64-core-valgrind-s2.xml m_gdbserver/power64-core.xml =
m_gdbserver/power64-core2-valgrind-s1.xml m_gdbserver/power64-core2-valgrin=
d-s2.xml m_gdbserver/power64-linux-valgrind-s1.xml m_gdbserver/power64-linu=
x-valgrind-s2.xml m_gdbserver/power64-linux.xml m_gdbserver/power-altivec-v=
algrind-s1.xml m_gdbserver/power-altivec-valgrind-s2.xml m_gdbserver/power-=
altivec.xml m_gdbserver/power-vsx-valgrind-s1.xml m_gdbserver/power-vsx-val=
grind-s2.xml m_gdbserver/power-vsx.xml m_gdbserver/power-core-valgrind-s1.x=
ml m_gdbserver/power-core-valgrind-s2.xml m_gdbserver/power-core.xml m_gdbs=
erver/power-fpu-valgrind-s1.xml m_gdbserver/power-fpu-valgrind-s2.xml m_gdb=
server/power-fpu.xml m_gdbserver/power-linux-valgrind-s1.xml m_gdbserver/po=
wer-linux-valgrind-s2.xml m_gdbserver/power-linux.xml m_gdbserver/powerpc-a=
ltivec32l-valgrind.xml m_gdbserver/powerpc-altivec32l.xml m_gdbserver/power=
pc-altivec64l-valgrind.xml m_gdbserver/powerpc-altivec64l.xml m_gdbserver/s=
390-acr-valgrind-s1.xml m_gdbserver/s390-acr-valgrind-s2.xml m_gdbserver/s3=
90-acr.xml m_gdbserver/s390-fpr-valgrind-s1.xml m_gdbserver/s390-fpr-valgri=
nd-s2.xml m_gdbserver/s390-fpr.xml m_gdbserver/s390x-core64-valgrind-s1.xml=
 m_gdbserver/s390x-core64-valgrind-s2.xml m_gdbserver/s390x-core64.xml m_gd=
bserver/s390x-generic-valgrind.xml m_gdbserver/s390x-generic.xml m_gdbserve=
r/s390x-linux64-valgrind-s1.xml m_gdbserver/s390x-linux64-valgrind-s2.xml m=
_gdbserver/s390x-linux64.xml m_gdbserver/s390-vx-valgrind-s1.xml m_gdbserve=
r/s390-vx-valgrind-s2.xml m_gdbserver/s390-vx.xml m_gdbserver/s390x-vx-linu=
x-valgrind.xml m_gdbserver/s390x-vx-linux.xml m_gdbserver/mips-cp0-valgrind=
-s1.xml m_gdbserver/mips-cp0-valgrind-s2.xml m_gdbserver/mips-cp0.xml m_gdb=
server/mips-cpu-valgrind-s1.xml m_gdbserver/mips-cpu-valgrind-s2.xml m_gdbs=
erver/mips-cpu.xml m_gdbserver/mips-linux.xml m_gdbserver/mips-linux-valgri=
nd.xml m_gdbserver/mips-fpu-valgrind-s1.xml m_gdbserver/mips-fpu-valgrind-s=
2.xml m_gdbserver/mips-fpu.xml m_gdbserver/mips64-cp0-valgrind-s1.xml m_gdb=
server/mips64-cp0-valgrind-s2.xml m_gdbserver/mips64-cp0.xml m_gdbserver/mi=
ps64-cpu-valgrind-s1.xml m_gdbserver/mips64-cpu-valgrind-s2.xml m_gdbserver=
/mips64-cpu.xml m_gdbserver/mips64-linux.xml m_gdbserver/mips64-linux-valgr=
ind.xml m_gdbserver/mips64-fpu-valgrind-s1.xml m_gdbserver/mips64-fpu-valgr=
ind-s2.xml m_gdbserver/mips64-fpu.xml; do \
	  rm -f ../.in_place/$f; \
	  ln -f -s ../coregrind/$f ../.in_place; \
	done
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/coregrind'
make[2]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/coregrind'
Making check in .
make[2]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build'
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/auxprogs/make_or_upd_vgversion_h /home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0
mkdir -p ./.in_place
rm -f ./.in_place/default.supp
ln -s ../default.supp ./.in_place
make[2]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build'
Making check in memcheck
make[2]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/memcheck'
Making check in .
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/memcheck'
mkdir -p ../.in_place; \
	for f in memcheck-arm-linux  vgpreload_memcheck-arm-linux.so  ; do \
	  rm -f ../.in_place/$f; \
	  ln -f -s ../memcheck/$f ../.in_place; \
	done
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
mkdir -p ../.in_place; \
	for f in ; do \
	  rm -f ../.in_place/$f.dSYM; \
	  ln -f -s ../memcheck/$f.dSYM ../.in_place; \
	done
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/memcheck'
Making check in tests
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/memcheck/tests'
Making check in .
make[4]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/memcheck/tests'
make  accounting addressable atomic_incs badaddrvalue badfree badjump badju=
mp2 badloop badpoll badrw big_blocks_freed_list brk2 buflen_check bug155125=
 bug287260 bug340392 calloc-overflow client-msg clientperm clireq_nofill cl=
o_redzone cond_ld_st descr_belowsp leak_cpp_interior custom_alloc custom-ov=
erlap demangle big_debuginfo_symbol deep-backtrace describe-block doublefre=
e error_counts errs1 exitprog execve1 execve2 erringfds err_disable1 err_di=
sable2 err_disable3 err_disable4 err_disable_arange1 file_locking fprw fwri=
te inits inline inlinfo inltemplate holey_buffer_too_small leak-0 leak-case=
s leak-cycle leak-delta leak-pool leak-autofreepool leak-tree leak-segv-jmp=
 long-supps mallinfo malloc_free_fill malloc_usable malloc1 malloc2 malloc3=
 manuel1 manuel2 manuel3 match-overrun memalign_test memalign2 memcmptest m=
empool mempool2 mmaptest mismatches new_override metadata nanoleak_supp nan=
oleak2 new_nothrow noisy_child null_socket origin1-yes origin2-not-quite or=
igin3-no origin4-many origin5-bz2 origin6-fp overlap partiallydefinedeq par=
tial_load pdb-realloc pdb-realloc2 pipe pointer-trace post-syscall realloc1=
 realloc2 realloc3 recursive-merge resvn_stack sbfragment sendmsg sh-mem sh=
-mem-random sigaltstack signal2 sigprocmask static_malloc sigkill strchr st=
r_tester supp_unknown supp1 supp2 suppfree test-plo trivialleak thread_allo=
ca undef_malloc_args unit_libcbase unit_oset varinfo1 varinfo2 varinfo3 var=
info4 varinfo5 varinfo5so.so varinfo6 varinforestrict vcpu_fbench vcpu_fnfn=
s wcs xml1 wrap1 wrap2 wrap3 wrap4 wrap5 wrap6 wrap7 wrap7so.so wrap8 wrapm=
alloc wrapmallocso.so wrapmallocstatic writev1 long_namespace_xml dw4   stp=
ncpy threadname reach_thread_register
make[5]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/memcheck/tests'
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o accounting.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/memcheck/tests/accounting.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o accounting accounting.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o addressable.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-re=
lease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.=
15.0-r0/valgrind-3.15.0/memcheck/tests/addressable.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o addressable addressable.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o atomic_incs-atomic_incs.o `test -f 'atomic_incs.c' || echo '/home/=
sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cort=
exa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memch=
eck/tests/'`atomic_incs.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o atomic_incs atomic_incs-atomic_incs.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o badaddrvalue.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-r=
elease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3=
.15.0-r0/valgrind-3.15.0/memcheck/tests/badaddrvalue.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o badaddrvalue badaddrvalue.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o badfree.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/memcheck/tests/badfree.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o badfree badfree.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o badjump.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/memcheck/tests/badjump.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o badjump badjump.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o badjump2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/memcheck/tests/badjump2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o badjump2 badjump2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o badloop.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/memcheck/tests/badloop.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o badloop badloop.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o badpoll.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/memcheck/tests/badpoll.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o badpoll badpoll.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o badrw.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/memcheck/tests/badrw.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o badrw badrw.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o big_blocks_freed_list.o /home/sarjoodeen/Project/2018/Nippon/YOCTO=
/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/v=
algrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/big_blocks_freed_list.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o big_blocks_freed_list big_blocks_freed_list.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o brk2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/memcheck/tests/brk2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o brk2 brk2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o buflen_check.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-r=
elease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3=
.15.0-r0/valgrind-3.15.0/memcheck/tests/buflen_check.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o buflen_check buflen_check.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o bug155125.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/memcheck/tests/bug155125.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o bug155125 bug155125.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o bug287260.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/memcheck/tests/bug287260.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o bug287260 bug287260.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -O3 -g -feliminate-unused-debug=
-types -c -o bug340392-bug340392.o `test -f 'bug340392.c' || echo '/home/sa=
rjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortex=
a7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memchec=
k/tests/'`bug340392.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -O3 -=
g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-n=
eeded -o bug340392 bug340392-bug340392.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o calloc-overflow.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22=
M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrin=
d/3.15.0-r0/valgrind-3.15.0/memcheck/tests/calloc-overflow.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o calloc-overflow calloc-overflow.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o client-msg.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/memcheck/tests/client-msg.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o client-msg client-msg.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o clientperm.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/memcheck/tests/clientperm.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o clientperm clientperm.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o clireq_nofill.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/clireq_nofill.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o clireq_nofill clireq_nofill.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o clo_redzone.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-re=
lease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.=
15.0-r0/valgrind-3.15.0/memcheck/tests/clo_redzone.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o clo_redzone clo_redzone.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o cond_ld_st.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/memcheck/tests/cond_ld_st.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o cond_ld_st cond_ld_st.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o descr_belowsp.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/descr_belowsp.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o descr_belowsp descr_belowsp.o -lpthread=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon=
/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnu=
eabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nip=
pon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-=
gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../inc=
lude -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/=
tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind=
-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_lin=
ux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-lo=
ng -g -fno-stack-protector   -g -feliminate-unused-debug-types -fvisibility=
-inlines-hidden -c -o leak_cpp_interior.o /home/sarjoodeen/Project/2018/Nip=
pon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-=
gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/leak_cpp_interior=
.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -g -feliminate-unuse=
d-debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -=
Wl,--as-needed -o leak_cpp_interior leak_cpp_interior.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o custom_alloc.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-r=
elease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3=
.15.0-r0/valgrind-3.15.0/memcheck/tests/custom_alloc.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o custom_alloc custom_alloc.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o custom-overlap.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M=
-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind=
/3.15.0-r0/valgrind-3.15.0/memcheck/tests/custom-overlap.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o custom-overlap custom-overlap.o =20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon=
/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnu=
eabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nip=
pon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-=
gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../inc=
lude -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/=
tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind=
-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_lin=
ux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-lo=
ng -g -fno-stack-protector   -g -feliminate-unused-debug-types -fvisibility=
-inlines-hidden -c -o demangle.o /home/sarjoodeen/Project/2018/Nippon/YOCTO=
/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/v=
algrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/demangle.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -g -feliminate-unuse=
d-debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -=
Wl,--as-needed -o demangle demangle.o =20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon=
/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnu=
eabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nip=
pon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-=
gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../inc=
lude -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/=
tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind=
-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_lin=
ux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-lo=
ng -g -fno-stack-protector   -std=3Dc++0x -g -feliminate-unused-debug-types=
 -fvisibility-inlines-hidden -c -o big_debuginfo_symbol-big_debuginfo_symbo=
l.o `test -f 'big_debuginfo_symbol.cpp' || echo '/home/sarjoodeen/Project/2=
018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky=
-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/'`big_debu=
ginfo_symbol.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -std=3Dc++0x -g -fel=
iminate-unused-debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-=
style=3Dgnu -Wl,--as-needed -o big_debuginfo_symbol big_debuginfo_symbol-bi=
g_debuginfo_symbol.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o deep-backtrace.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M=
-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind=
/3.15.0-r0/valgrind-3.15.0/memcheck/tests/deep-backtrace.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o deep-backtrace deep-backtrace.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o describe-block.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M=
-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind=
/3.15.0-r0/valgrind-3.15.0/memcheck/tests/describe-block.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o describe-block describe-block.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o doublefree.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/memcheck/tests/doublefree.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o doublefree doublefree.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -Wno-uninitialized -g -felimina=
te-unused-debug-types -c -o error_counts-error_counts.o `test -f 'error_cou=
nts.c' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/memcheck/tests/'`error_counts.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -Wno-=
uninitialized -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed -o error_counts error_counts-error_counts.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o errs1.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/memcheck/tests/errs1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o errs1 errs1.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o exitprog.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/memcheck/tests/exitprog.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o exitprog exitprog.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -Wno-nonnull -g -feliminate-unu=
sed-debug-types -c -o execve1-execve1.o `test -f 'execve1.c' || echo '/home=
/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cor=
texa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memc=
heck/tests/'`execve1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -Wno-=
nonnull -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -=
Wl,--as-needed -o execve1 execve1-execve1.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -Wno-nonnull -g -feliminate-unu=
sed-debug-types -c -o execve2-execve2.o `test -f 'execve2.c' || echo '/home=
/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cor=
texa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memc=
heck/tests/'`execve2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -Wno-=
nonnull -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -=
Wl,--as-needed -o execve2 execve2-execve2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o erringfds.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/memcheck/tests/erringfds.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o erringfds erringfds.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o err_disable1.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-r=
elease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3=
.15.0-r0/valgrind-3.15.0/memcheck/tests/err_disable1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o err_disable1 err_disable1.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o err_disable2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-r=
elease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3=
.15.0-r0/valgrind-3.15.0/memcheck/tests/err_disable2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o err_disable2 err_disable2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o err_disable3.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-r=
elease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3=
.15.0-r0/valgrind-3.15.0/memcheck/tests/err_disable3.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o err_disable3 err_disable3.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector      -g -feliminate-unused-debug-ty=
pes -c -o err_disable4-err_disable4.o `test -f 'err_disable4.c' || echo '/h=
ome/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/=
cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/m=
emcheck/tests/'`err_disable4.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector      -g -=
feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-need=
ed -o err_disable4 err_disable4-err_disable4.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o err_disable_arange1.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/i=
wG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/val=
grind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/err_disable_arange1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o err_disable_arange1 err_disable_arange1.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o file_locking.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-r=
elease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3=
.15.0-r0/valgrind-3.15.0/memcheck/tests/file_locking.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o file_locking file_locking.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -Wno-uninitialized -g -felimina=
te-unused-debug-types -c -o fprw-fprw.o `test -f 'fprw.c' || echo '/home/sa=
rjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortex=
a7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memchec=
k/tests/'`fprw.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -Wno-=
uninitialized -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed -o fprw fprw-fprw.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o fwrite.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/memcheck/tests/fwrite.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o fwrite fwrite.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -Wno-uninitialized -g -felimina=
te-unused-debug-types -c -o inits-inits.o `test -f 'inits.c' || echo '/home=
/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cor=
texa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memc=
heck/tests/'`inits.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -Wno-=
uninitialized -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed -o inits inits-inits.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o inline.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/memcheck/tests/inline.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o inline inline.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -w -g -feliminate-unused-debug-=
types -c -o inlinfo-inlinfo.o `test -f 'inlinfo.c' || echo '/home/sarjoodee=
n/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vf=
p-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests=
/'`inlinfo.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -w -g=
 -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-ne=
eded -o inlinfo inlinfo-inlinfo.o =20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon=
/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnu=
eabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nip=
pon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-=
gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../inc=
lude -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/=
tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind=
-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_lin=
ux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-lo=
ng -g -fno-stack-protector   -Wno-uninitialized -g -feliminate-unused-debug=
-types -fvisibility-inlines-hidden -c -o inltemplate-inltemplate.o `test -f=
 'inltemplate.cpp' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/valgrind-3.15.0/memcheck/tests/'`inltemplate.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -Wno-uninitialized -=
g -feliminate-unused-debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,-=
-hash-style=3Dgnu -Wl,--as-needed -o inltemplate inltemplate-inltemplate.o =
=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o holey_buffer_too_small.o /home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/holey_buffer_too_small.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o holey_buffer_too_small holey_buffer_too_small.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o leak-0.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/memcheck/tests/leak-0.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o leak-0 leak-0.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o leak-cases.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/memcheck/tests/leak-cases.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o leak-cases leak-cases.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o leak-cycle.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/memcheck/tests/leak-cycle.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o leak-cycle leak-cycle.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o leak-delta.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/memcheck/tests/leak-delta.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o leak-delta leak-delta.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o leak-pool.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/memcheck/tests/leak-pool.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o leak-pool leak-pool.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o leak-autofreepool.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/leak-autofreepool.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o leak-autofreepool leak-autofreepool.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o leak-tree.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/memcheck/tests/leak-tree.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o leak-tree leak-tree.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o leak-segv-jmp.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/leak-segv-jmp.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o leak-segv-jmp leak-segv-jmp.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o long-supps.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/memcheck/tests/long-supps.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o long-supps long-supps.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o mallinfo.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/memcheck/tests/mallinfo.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o mallinfo mallinfo.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o malloc_free_fill.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/valgrind-3.15.0/memcheck/tests/malloc_free_fill.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o malloc_free_fill malloc_free_fill.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o malloc_usable.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/malloc_usable.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o malloc_usable malloc_usable.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o malloc1.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/memcheck/tests/malloc1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o malloc1 malloc1.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o malloc2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/memcheck/tests/malloc2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o malloc2 malloc2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o malloc3.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/memcheck/tests/malloc3.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o malloc3 malloc3.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -Wno-uninitialized -g -felimina=
te-unused-debug-types -c -o manuel1-manuel1.o `test -f 'manuel1.c' || echo =
'/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wo=
rk/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.=
0/memcheck/tests/'`manuel1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -Wno-=
uninitialized -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed -o manuel1 manuel1-manuel1.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o manuel2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/memcheck/tests/manuel2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o manuel2 manuel2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o manuel3.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/memcheck/tests/manuel3.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o manuel3 manuel3.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o match-overrun.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/match-overrun.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o match-overrun match-overrun.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o memalign_test.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/memalign_test.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o memalign_test memalign_test.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector      -g -feliminate-unused-debug-ty=
pes -c -o memalign2-memalign2.o `test -f 'memalign2.c' || echo '/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/t=
ests/'`memalign2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector      -g -=
feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-need=
ed -o memalign2 memalign2-memalign2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -fno-builtin-memcmp -g -felimin=
ate-unused-debug-types -c -o memcmptest-memcmptest.o `test -f 'memcmptest.c=
' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/bu=
ild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valg=
rind-3.15.0/memcheck/tests/'`memcmptest.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -fno-=
builtin-memcmp -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed -o memcmptest memcmptest-memcmptest.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o mempool.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/memcheck/tests/mempool.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o mempool mempool.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o mempool2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/memcheck/tests/mempool2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o mempool2 mempool2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o mmaptest.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/memcheck/tests/mmaptest.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o mmaptest mmaptest.o =20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon=
/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnu=
eabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nip=
pon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-=
gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../inc=
lude -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/=
tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind=
-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_lin=
ux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-lo=
ng -g -fno-stack-protector    -g -feliminate-unused-debug-types -fvisibilit=
y-inlines-hidden -c -o mismatches-mismatches.o `test -f 'mismatches.cpp' ||=
 echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/=
tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind=
-3.15.0/memcheck/tests/'`mismatches.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-unus=
ed-debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu =
-Wl,--as-needed -o mismatches mismatches-mismatches.o =20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon=
/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnu=
eabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nip=
pon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-=
gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../inc=
lude -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/=
tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind=
-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_lin=
ux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-lo=
ng -g -fno-stack-protector   -g -feliminate-unused-debug-types -fvisibility=
-inlines-hidden -c -o new_override.o /home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/new_override.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -g -feliminate-unuse=
d-debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -=
Wl,--as-needed -o new_override new_override.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o metadata.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/memcheck/tests/metadata.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o metadata metadata.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o nanoleak_supp.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/nanoleak_supp.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o nanoleak_supp nanoleak_supp.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o nanoleak2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/memcheck/tests/nanoleak2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o nanoleak2 nanoleak2.o =20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon=
/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnu=
eabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nip=
pon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-=
gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../inc=
lude -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/=
tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind=
-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_lin=
ux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-lo=
ng -g -fno-stack-protector   -g -feliminate-unused-debug-types -fvisibility=
-inlines-hidden -c -o new_nothrow.o /home/sarjoodeen/Project/2018/Nippon/YO=
CTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueab=
i/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/new_nothrow.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -g -feliminate-unuse=
d-debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -=
Wl,--as-needed -o new_nothrow new_nothrow.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o noisy_child.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-re=
lease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.=
15.0-r0/valgrind-3.15.0/memcheck/tests/noisy_child.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o noisy_child noisy_child.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o null_socket.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-re=
lease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.=
15.0-r0/valgrind-3.15.0/memcheck/tests/null_socket.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o null_socket null_socket.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -Wno-uninitialized -g -felimina=
te-unused-debug-types -c -o origin1_yes-origin1-yes.o `test -f 'origin1-yes=
.c' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/=
build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/va=
lgrind-3.15.0/memcheck/tests/'`origin1-yes.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -Wno-=
uninitialized -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed -o origin1-yes origin1_yes-origin1-yes.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -Wno-uninitialized -g -felimina=
te-unused-debug-types -c -o origin2_not_quite-origin2-not-quite.o `test -f =
'origin2-not-quite.c' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/i=
wG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/val=
grind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/'`origin2-not-quite.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -Wno-=
uninitialized -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed -o origin2-not-quite origin2_not_quite-origin2-not-q=
uite.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -Wno-uninitialized -g -felimina=
te-unused-debug-types -c -o origin3_no-origin3-no.o `test -f 'origin3-no.c'=
 || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/bui=
ld/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgr=
ind-3.15.0/memcheck/tests/'`origin3-no.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -Wno-=
uninitialized -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed -o origin3-no origin3_no-origin3-no.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -O -g -feliminate-unused-debug-=
types -c -o origin4_many-origin4-many.o `test -f 'origin4-many.c' || echo '=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/memcheck/tests/'`origin4-many.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -O -g=
 -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-ne=
eded -o origin4-many origin4_many-origin4-many.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -O -Wno-inline -g -feliminate-u=
nused-debug-types -c -o origin5_bz2-origin5-bz2.o `test -f 'origin5-bz2.c' =
|| echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/buil=
d/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgri=
nd-3.15.0/memcheck/tests/'`origin5-bz2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -O -W=
no-inline -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu=
 -Wl,--as-needed -o origin5-bz2 origin5_bz2-origin5-bz2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -O -g -feliminate-unused-debug-=
types -c -o origin6_fp-origin6-fp.o `test -f 'origin6-fp.c' || echo '/home/=
sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cort=
exa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memch=
eck/tests/'`origin6-fp.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -O -g=
 -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-ne=
eded -o origin6-fp origin6_fp-origin6-fp.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -fno-builtin-memcpy -fno-builti=
n-strcpy -g -feliminate-unused-debug-types -c -o overlap-overlap.o `test -f=
 'overlap.c' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/memcheck/tests/'`overlap.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -fno-=
builtin-memcpy -fno-builtin-strcpy -g -feliminate-unused-debug-types  -Wl,-=
O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o overlap overlap-overlap.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o partiallydefinedeq.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iw=
G22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valg=
rind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/partiallydefinedeq.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o partiallydefinedeq partiallydefinedeq.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o partial_load.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-r=
elease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3=
.15.0-r0/valgrind-3.15.0/memcheck/tests/partial_load.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o partial_load partial_load.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o pdb-realloc.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-re=
lease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.=
15.0-r0/valgrind-3.15.0/memcheck/tests/pdb-realloc.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o pdb-realloc pdb-realloc.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o pdb-realloc2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-r=
elease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3=
.15.0-r0/valgrind-3.15.0/memcheck/tests/pdb-realloc2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o pdb-realloc2 pdb-realloc2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o pipe.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/memcheck/tests/pipe.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o pipe pipe.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o pointer-trace.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/pointer-trace.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o pointer-trace pointer-trace.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o post-syscall.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-r=
elease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3=
.15.0-r0/valgrind-3.15.0/memcheck/tests/post-syscall.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o post-syscall post-syscall.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o realloc1.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/memcheck/tests/realloc1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o realloc1 realloc1.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o realloc2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/memcheck/tests/realloc2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o realloc2 realloc2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o realloc3.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/memcheck/tests/realloc3.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o realloc3 realloc3.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o recursive-merge.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22=
M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrin=
d/3.15.0-r0/valgrind-3.15.0/memcheck/tests/recursive-merge.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o recursive-merge recursive-merge.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -Wno-uninitialized -g -felimina=
te-unused-debug-types -c -o resvn_stack-resvn_stack.o `test -f 'resvn_stack=
.c' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/=
build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/va=
lgrind-3.15.0/memcheck/tests/'`resvn_stack.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -Wno-=
uninitialized -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed -o resvn_stack resvn_stack-resvn_stack.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o sbfragment.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/memcheck/tests/sbfragment.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o sbfragment sbfragment.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector      -g -feliminate-unused-debug-ty=
pes -c -o sendmsg-sendmsg.o `test -f 'sendmsg.c' || echo '/home/sarjoodeen/=
Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-=
neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/'=
`sendmsg.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector      -g -=
feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-need=
ed -o sendmsg sendmsg-sendmsg.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o sh-mem.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/memcheck/tests/sh-mem.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o sh-mem sh-mem.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o sh-mem-random.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/sh-mem-random.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o sh-mem-random sh-mem-random.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o sigaltstack.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-re=
lease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.=
15.0-r0/valgrind-3.15.0/memcheck/tests/sigaltstack.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o sigaltstack sigaltstack.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o signal2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/memcheck/tests/signal2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o signal2 signal2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o sigprocmask.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-re=
lease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.=
15.0-r0/valgrind-3.15.0/memcheck/tests/sigprocmask.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o sigprocmask sigprocmask.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o static_malloc.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/static_malloc.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o static_malloc static_malloc.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o sigkill.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/memcheck/tests/sigkill.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o sigkill sigkill.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o strchr.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/memcheck/tests/strchr.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o strchr strchr.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -Wno-shadow  -g -feliminate-unu=
sed-debug-types -c -o str_tester-str_tester.o `test -f 'str_tester.c' || ec=
ho '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp=
/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.=
15.0/memcheck/tests/'`str_tester.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -Wno-=
shadow  -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -=
Wl,--as-needed -o str_tester str_tester-str_tester.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -Wno-uninitialized -g -felimina=
te-unused-debug-types -c -o supp_unknown-badjump.o `test -f 'badjump.c' || =
echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/t=
mp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-=
3.15.0/memcheck/tests/'`badjump.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -Wno-=
uninitialized -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed -o supp_unknown supp_unknown-badjump.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -Wno-uninitialized -g -felimina=
te-unused-debug-types -c -o supp1-supp.o `test -f 'supp.c' || echo '/home/s=
arjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/corte=
xa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memche=
ck/tests/'`supp.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -Wno-=
uninitialized -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed -o supp1 supp1-supp.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -Wno-uninitialized -g -felimina=
te-unused-debug-types -c -o supp2-supp.o `test -f 'supp.c' || echo '/home/s=
arjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/corte=
xa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memche=
ck/tests/'`supp.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -Wno-=
uninitialized -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed -o supp2 supp2-supp.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o suppfree.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/memcheck/tests/suppfree.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o suppfree suppfree.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o test-plo.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/memcheck/tests/test-plo.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o test-plo test-plo.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o trivialleak.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-re=
lease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.=
15.0-r0/valgrind-3.15.0/memcheck/tests/trivialleak.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o trivialleak trivialleak.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o thread_alloca.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/thread_alloca.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o thread_alloca thread_alloca.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o undef_malloc_args.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/undef_malloc_args.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o undef_malloc_args undef_malloc_args.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o unit_libcbase.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/unit_libcbase.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o unit_libcbase unit_libcbase.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o unit_oset.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/memcheck/tests/unit_oset.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o unit_oset unit_oset.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -O -g -feliminate-unused-debug-=
types -c -o varinfo1-varinfo1.o `test -f 'varinfo1.c' || echo '/home/sarjoo=
deen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf=
-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/te=
sts/'`varinfo1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -O -g=
 -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-ne=
eded -o varinfo1 varinfo1-varinfo1.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -O -Wno-shadow -g -feliminate-u=
nused-debug-types -c -o varinfo2-varinfo2.o `test -f 'varinfo2.c' || echo '=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/memcheck/tests/'`varinfo2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -O -W=
no-shadow -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu=
 -Wl,--as-needed -o varinfo2 varinfo2-varinfo2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -O -g -feliminate-unused-debug-=
types -c -o varinfo3-varinfo3.o `test -f 'varinfo3.c' || echo '/home/sarjoo=
deen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf=
-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/te=
sts/'`varinfo3.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -O -g=
 -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-ne=
eded -o varinfo3 varinfo3-varinfo3.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -O -g -feliminate-unused-debug-=
types -c -o varinfo4-varinfo4.o `test -f 'varinfo4.c' || echo '/home/sarjoo=
deen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf=
-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/te=
sts/'`varinfo4.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -O -g=
 -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-ne=
eded -o varinfo4 varinfo4-varinfo4.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -O -g -feliminate-unused-debug-=
types -c -o varinfo5-varinfo5.o `test -f 'varinfo5.c' || echo '/home/sarjoo=
deen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf=
-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/te=
sts/'`varinfo5.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -fpic -O -Wno-shadow -g -felimi=
nate-unused-debug-types -c -o varinfo5so_so-varinfo5so.o `test -f 'varinfo5=
so.c' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/memcheck/tests/'`varinfo5so.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -fpic=
 -O -Wno-shadow -g -feliminate-unused-debug-types -fpic  -shared -Wl,-sonam=
e -Wl,varinfo5so.so -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o varin=
fo5so.so varinfo5so_so-varinfo5so.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -O -g=
 -feliminate-unused-debug-types  -Wl,-rpath,/usr/lib/valgrind/ptest/memchec=
k/tests -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o varinfo5 varinfo5=
-varinfo5.o varinfo5so.so=20
make[5]: `varinfo5so.so' is up to date.
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -O -g -feliminate-unused-debug-=
types -c -o varinfo6-varinfo6.o `test -f 'varinfo6.c' || echo '/home/sarjoo=
deen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf=
-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/te=
sts/'`varinfo6.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -O -g=
 -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-ne=
eded -o varinfo6 varinfo6-varinfo6.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -O0 -g -g -feliminate-unused-de=
bug-types -c -o varinforestrict-varinforestrict.o `test -f 'varinforestrict=
.c' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/=
build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/va=
lgrind-3.15.0/memcheck/tests/'`varinforestrict.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -O0 -=
g -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--a=
s-needed -o varinforestrict varinforestrict-varinforestrict.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -O2 -g -feliminate-unused-debug=
-types -c -o vcpu_fbench-vcpu_fbench.o `test -f 'vcpu_fbench.c' || echo '/h=
ome/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/=
cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/m=
emcheck/tests/'`vcpu_fbench.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -O2 -=
g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-n=
eeded -o vcpu_fbench vcpu_fbench-vcpu_fbench.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -O2 -g -feliminate-unused-debug=
-types -c -o vcpu_fnfns-vcpu_fnfns.o `test -f 'vcpu_fnfns.c' || echo '/home=
/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cor=
texa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memc=
heck/tests/'`vcpu_fnfns.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -O2 -=
g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-n=
eeded -o vcpu_fnfns vcpu_fnfns-vcpu_fnfns.o -lm=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o wcs.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/memcheck/tests/wcs.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o wcs wcs.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -D_GNU_SOURCE -g -feliminate-un=
used-debug-types -c -o xml1-xml1.o `test -f 'xml1.c' || echo '/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tes=
ts/'`xml1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -D_GN=
U_SOURCE -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu =
-Wl,--as-needed -o xml1 xml1-xml1.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o wrap1.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/memcheck/tests/wrap1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o wrap1 wrap1.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o wrap2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/memcheck/tests/wrap2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o wrap2 wrap2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o wrap3.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/memcheck/tests/wrap3.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o wrap3 wrap3.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o wrap4.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/memcheck/tests/wrap4.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o wrap4 wrap4.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o wrap5.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/memcheck/tests/wrap5.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o wrap5 wrap5.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -O2 -g -feliminate-unused-debug=
-types -c -o wrap6-wrap6.o `test -f 'wrap6.c' || echo '/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/'`wr=
ap6.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -O2 -=
g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-n=
eeded -o wrap6 wrap6-wrap6.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o wrap7.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/memcheck/tests/wrap7.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -fpic -g -feliminate-unused-deb=
ug-types -c -o wrap7so_so-wrap7so.o `test -f 'wrap7so.c' || echo '/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck=
/tests/'`wrap7so.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -fpic=
 -g -feliminate-unused-debug-types -fpic  -shared -Wl,-soname -Wl,wrap7so.s=
o -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o wrap7so.so wrap7so_so-w=
rap7so.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-rpath,/usr/lib/valgrind/ptest/memcheck/t=
ests -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o wrap7 wrap7.o wrap7s=
o.so=20
make[5]: `wrap7so.so' is up to date.
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o wrap8.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/memcheck/tests/wrap8.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o wrap8 wrap8.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o wrapmalloc.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/memcheck/tests/wrapmalloc.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -fpic -g -feliminate-unused-deb=
ug-types -c -o wrapmallocso_so-wrapmallocso.o `test -f 'wrapmallocso.c' || =
echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/t=
mp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-=
3.15.0/memcheck/tests/'`wrapmallocso.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -fpic=
 -g -feliminate-unused-debug-types -fpic  -shared -Wl,-soname -Wl,wrapmallo=
cso.so -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o wrapmallocso.so wr=
apmallocso_so-wrapmallocso.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-rpath,/usr/lib/valgrind/ptest/memcheck/t=
ests -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o wrapmalloc wrapmallo=
c.o wrapmallocso.so=20
make[5]: `wrapmallocso.so' is up to date.
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o wrapmallocstatic.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/valgrind-3.15.0/memcheck/tests/wrapmallocstatic.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o wrapmallocstatic wrapmallocstatic.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o writev1.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/memcheck/tests/writev1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o writev1 writev1.o =20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon=
/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnu=
eabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nip=
pon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-=
gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../inc=
lude -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/=
tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind=
-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_lin=
ux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-lo=
ng -g -fno-stack-protector   -g -feliminate-unused-debug-types -fvisibility=
-inlines-hidden -c -o long_namespace_xml.o /home/sarjoodeen/Project/2018/Ni=
ppon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux=
-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/long_namespace_x=
ml.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -g -feliminate-unuse=
d-debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -=
Wl,--as-needed -o long_namespace_xml long_namespace_xml.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -gdwarf-4 -fdebug-types-section=
 -g -feliminate-unused-debug-types -c -o dw4-dw4.o `test -f 'dw4.c' || echo=
 '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/memcheck/tests/'`dw4.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -gdwa=
rf-4 -fdebug-types-section -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,-=
-hash-style=3Dgnu -Wl,--as-needed -o dw4 dw4-dw4.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o stpncpy.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/memcheck/tests/stpncpy.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o stpncpy stpncpy.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o threadname.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/memcheck/tests/threadname.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o threadname threadname.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -O2 -g -feliminate-unused-debug=
-types -c -o reach_thread_register-reach_thread_register.o `test -f 'reach_=
thread_register.c' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/valgrind-3.15.0/memcheck/tests/'`reach_thread_register.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -O2 -=
g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-n=
eeded -o reach_thread_register reach_thread_register-reach_thread_register.=
o -lpthread=20
make[5]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/memcheck/tests'
make  check-local
make[5]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/memcheck/tests'
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
make[5]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/memcheck/tests'
make[4]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/memcheck/tests'
Making check in linux
make[4]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/memcheck/tests/linux'
make  brk capget dlclose_leak dlclose_leak_so.so ioctl-tiocsig getregset ls=
frame1 lsframe2 rfcomm sigqueue stack_changes stack_switch syscalls-2007 sy=
slog-syscall sys-statx timerfd-syscall proc-auxv sys-openat
make[5]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/memcheck/tests/linux'
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o brk.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/brk.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o brk brk.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o capget.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/capget.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o capget capget.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o dlclose_leak.o /home/sarjoodeen/Project/2018/Nippon/=
YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnue=
abi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/dlclose_leak.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -fpic -g -O0 -g -=
feliminate-unused-debug-types -c -o dlclose_leak_so_so-dlclose_leak_so.o `t=
est -f 'dlclose_leak_so.c' || echo '/home/sarjoodeen/Project/2018/Nippon/YO=
CTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueab=
i/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/'`dlclose_leak_so=
.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -fpic =
-g -O0 -g -feliminate-unused-debug-types -fpic  -shared -Wl,-soname -Wl,dlc=
lose_leak_so.so -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o dlclose_l=
eak_so.so dlclose_leak_so_so-dlclose_leak_so.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-rpath,../../../memcheck/tests/linux -Wl,-=
O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o dlclose_leak dlclose_leak.o -l=
dl=20
make[5]: `dlclose_leak_so.so' is up to date.
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o ioctl-tiocsig.o /home/sarjoodeen/Project/2018/Nippon=
/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnu=
eabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/ioctl-tiocsig.=
c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o ioctl-tiocsig ioctl-tiocsig.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o getregset.o /home/sarjoodeen/Project/2018/Nippon/YOC=
TO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi=
/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/getregset.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o getregset getregset.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o lsframe1.o /home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/lsframe1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o lsframe1 lsframe1.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o lsframe2.o /home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/lsframe2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o lsframe2 lsframe2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o rfcomm.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/rfcomm.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o rfcomm rfcomm.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o sigqueue.o /home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/sigqueue.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o sigqueue sigqueue.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o stack_changes.o /home/sarjoodeen/Project/2018/Nippon=
/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnu=
eabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/stack_changes.=
c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o stack_changes stack_changes.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o stack_switch.o /home/sarjoodeen/Project/2018/Nippon/=
YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnue=
abi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/stack_switch.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o stack_switch stack_switch.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o syscalls-2007.o /home/sarjoodeen/Project/2018/Nippon=
/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnu=
eabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/syscalls-2007.=
c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o syscalls-2007 syscalls-2007.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o syslog-syscall.o /home/sarjoodeen/Project/2018/Nippo=
n/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gn=
ueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/syslog-syscal=
l.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o syslog-syscall syslog-syscall.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o sys-statx.o /home/sarjoodeen/Project/2018/Nippon/YOC=
TO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi=
/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/sys-statx.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o sys-statx sys-statx.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o timerfd-syscall.o /home/sarjoodeen/Project/2018/Nipp=
on/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-g=
nueabi/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/timerfd-sysc=
all.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o timerfd-syscall timerfd-syscall.o -lrt=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o proc-auxv.o /home/sarjoodeen/Project/2018/Nippon/YOC=
TO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi=
/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/proc-auxv.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o proc-auxv proc-auxv.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux -I../../..  -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/coregrind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -=
DVGO_linux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline=
 -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -feliminate-un=
used-debug-types -c -o sys-openat.o /home/sarjoodeen/Project/2018/Nippon/YO=
CTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueab=
i/valgrind/3.15.0-r0/valgrind-3.15.0/memcheck/tests/linux/sys-openat.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o sys-openat sys-openat.o =20
make[5]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/memcheck/tests/linux'
make  check-local
make[5]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/memcheck/tests/linux'
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
make[5]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/memcheck/tests/linux'
make[4]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/memcheck/tests/linux'
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/memcheck/tests'
make[2]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/memcheck'
Making check in cachegrind
make[2]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/cachegrind'
Making check in .
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/cachegrind'
mkdir -p ../.in_place; \
	for f in cachegrind-arm-linux  ; do \
	  rm -f ../.in_place/$f; \
	  ln -f -s ../cachegrind/$f ../.in_place; \
	done
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
mkdir -p ../.in_place; \
	for f in ; do \
	  rm -f ../.in_place/$f.dSYM; \
	  ln -f -s ../cachegrind/$f.dSYM ../.in_place; \
	done
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/cachegrind'
Making check in tests
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/cachegrind/tests'
Making check in .
make[4]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/cachegrind/tests'
make  chdir clreq dlclose myprint.so
make[5]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/cachegrind/tests'
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/cachegrind/tests -I../..  -I/home/sarjoodeen/Proj=
ect/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon=
-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/P=
roject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-n=
eon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/s=
arjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/corte=
xa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregr=
ind -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D=
1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshad=
ow -Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-ty=
pes -c -o chdir.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/cachegrind/tests/chdir.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o chdir chdir.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/cachegrind/tests -I../..  -I/home/sarjoodeen/Proj=
ect/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon=
-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/P=
roject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-n=
eon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/s=
arjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/corte=
xa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregr=
ind -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D=
1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshad=
ow -Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-ty=
pes -c -o clreq.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/cachegrind/tests/clreq.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o clreq clreq.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/cachegrind/tests -I../..  -I/home/sarjoodeen/Proj=
ect/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon=
-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/P=
roject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-n=
eon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/s=
arjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/corte=
xa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregr=
ind -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D=
1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshad=
ow -Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-ty=
pes -c -o dlclose.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/cachegrind/tests/dlclose.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o dlclose dlclose.o -ldl=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/cachegrind/tests -I../..  -I/home/sarjoodeen/Proj=
ect/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon=
-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/P=
roject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-n=
eon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/s=
arjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/corte=
xa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregr=
ind -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D=
1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshad=
ow -Wno-long-long -g -fno-stack-protector    -fPIC -g -feliminate-unused-de=
bug-types -c -o myprint_so-myprint.o `test -f 'myprint.c' || echo '/home/sa=
rjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortex=
a7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/cachegr=
ind/tests/'`myprint.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -fPIC =
-g -feliminate-unused-debug-types -Winline -Wall -Wshadow -Wno-long-long -g=
 -fno-stack-protector    -shared -fPIC -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,-=
-as-needed -o myprint.so myprint_so-myprint.o =20
make[5]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/cachegrind/tests'
make  check-local
make[5]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/cachegrind/tests'
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
make[5]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/cachegrind/tests'
make[4]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/cachegrind/tests'
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/cachegrind/tests'
make[2]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/cachegrind'
Making check in callgrind
make[2]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/callgrind'
Making check in .
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/callgrind'
mkdir -p ../.in_place; \
	for f in callgrind-arm-linux  ; do \
	  rm -f ../.in_place/$f; \
	  ln -f -s ../callgrind/$f ../.in_place; \
	done
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
mkdir -p ../.in_place; \
	for f in ; do \
	  rm -f ../.in_place/$f.dSYM; \
	  ln -f -s ../callgrind/$f.dSYM ../.in_place; \
	done
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/callgrind'
Making check in tests
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/callgrind/tests'
Making check in .
make[4]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/callgrind/tests'
make  clreq simwork threads
make[5]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/callgrind/tests'
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/callgrind/tests -I../..  -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pr=
oject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-ne=
on-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sa=
rjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortex=
a7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregri=
nd -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1=
 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshado=
w -Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-typ=
es -c -o clreq.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/callgrind/tests/clreq.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o clreq clreq.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/callgrind/tests -I../..  -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pr=
oject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-ne=
on-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sa=
rjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortex=
a7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregri=
nd -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1=
 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshado=
w -Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-typ=
es -c -o simwork.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/callgrind/tests/simwork.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o simwork simwork.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/callgrind/tests -I../..  -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pr=
oject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-ne=
on-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sa=
rjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortex=
a7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregri=
nd -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1=
 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshado=
w -Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-typ=
es -c -o threads.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/callgrind/tests/threads.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o threads threads.o -lpthread=20
make[5]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/callgrind/tests'
make  check-local
make[5]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/callgrind/tests'
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
make[5]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/callgrind/tests'
make[4]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/callgrind/tests'
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/callgrind/tests'
make[2]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/callgrind'
Making check in helgrind
make[2]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/helgrind'
Making check in .
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/helgrind'
mkdir -p ../.in_place; \
	for f in helgrind-arm-linux  vgpreload_helgrind-arm-linux.so  ; do \
	  rm -f ../.in_place/$f; \
	  ln -f -s ../helgrind/$f ../.in_place; \
	done
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
mkdir -p ../.in_place; \
	for f in ; do \
	  rm -f ../.in_place/$f.dSYM; \
	  ln -f -s ../helgrind/$f.dSYM ../.in_place; \
	done
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/helgrind'
Making check in tests
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/helgrind/tests'
make  annotate_hbefore cond_init_destroy cond_timedwait_invalid cond_timedw=
ait_test free_is_write hg01_all_ok hg02_deadlock hg03_inherit hg04_race hg0=
5_race2 hg06_readshared locked_vs_unlocked1 locked_vs_unlocked2 locked_vs_u=
nlocked3 pth_destroy_cond shmem_abits stackteardown t2t tc01_simple_race tc=
02_simple_tls tc03_re_excl tc04_free_lock tc05_simple_race tc06_two_races t=
c07_hbl1 tc08_hbl2 tc09_bad_unlock tc10_rec_lock tc11_XCHG tc12_rwl_trivial=
 tc13_laog1 tc14_laog_dinphils tc15_laog_lockdel tc16_byterace tc17_sembar =
tc18_semabuse tc19_shadowmem tc21_pthonce tc23_bogus_condwait tc24_nonzero_=
sem tls_threads tc22_exit_w_lock bar_bad bar_trivial bug322621 tc20_verifyw=
rap annotate_rwlock
make[4]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/helgrind/tests'
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o annotate_hbefore-annotate_hbefore.o `test -f 'annotate_hbefore.c' =
|| echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/buil=
d/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgri=
nd-3.15.0/helgrind/tests/'`annotate_hbefore.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o annotate_hbefore annotate_hbefore-annotate_hbefore.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o cond_init_destroy.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/valgrind-3.15.0/helgrind/tests/cond_init_destroy.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o cond_init_destroy cond_init_destroy.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o cond_timedwait_invalid.o /home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0/helgrind/tests/cond_timedwait_invalid.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o cond_timedwait_invalid cond_timedwait_invalid.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o cond_timedwait_test.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/i=
wG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/val=
grind/3.15.0-r0/valgrind-3.15.0/helgrind/tests/cond_timedwait_test.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o cond_timedwait_test cond_timedwait_test.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o free_is_write.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests/free_is_write.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o free_is_write free_is_write.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o hg01_all_ok.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-re=
lease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.=
15.0-r0/valgrind-3.15.0/helgrind/tests/hg01_all_ok.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o hg01_all_ok hg01_all_ok.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o hg02_deadlock.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests/hg02_deadlock.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o hg02_deadlock hg02_deadlock.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o hg03_inherit.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-r=
elease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3=
.15.0-r0/valgrind-3.15.0/helgrind/tests/hg03_inherit.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o hg03_inherit hg03_inherit.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o hg04_race.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/helgrind/tests/hg04_race.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o hg04_race hg04_race.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o hg05_race2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/helgrind/tests/hg05_race2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o hg05_race2 hg05_race2.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o hg06_readshared.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22=
M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrin=
d/3.15.0-r0/valgrind-3.15.0/helgrind/tests/hg06_readshared.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o hg06_readshared hg06_readshared.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o locked_vs_unlocked1.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/i=
wG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/val=
grind/3.15.0-r0/valgrind-3.15.0/helgrind/tests/locked_vs_unlocked1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o locked_vs_unlocked1 locked_vs_unlocked1.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o locked_vs_unlocked2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/i=
wG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/val=
grind/3.15.0-r0/valgrind-3.15.0/helgrind/tests/locked_vs_unlocked2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o locked_vs_unlocked2 locked_vs_unlocked2.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o locked_vs_unlocked3.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/i=
wG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/val=
grind/3.15.0-r0/valgrind-3.15.0/helgrind/tests/locked_vs_unlocked3.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o locked_vs_unlocked3 locked_vs_unlocked3.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o pth_destroy_cond.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/valgrind-3.15.0/helgrind/tests/pth_destroy_cond.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o pth_destroy_cond pth_destroy_cond.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o shmem_abits.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-re=
lease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.=
15.0-r0/valgrind-3.15.0/helgrind/tests/shmem_abits.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o shmem_abits shmem_abits.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o stackteardown.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests/stackteardown.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o stackteardown stackteardown.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o t2t.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/helgrind/tests/t2t.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o t2t t2t.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc01_simple_race.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc01_simple_race.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc01_simple_race tc01_simple_race.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc02_simple_tls.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22=
M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrin=
d/3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc02_simple_tls.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc02_simple_tls tc02_simple_tls.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc03_re_excl.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-r=
elease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3=
.15.0-r0/valgrind-3.15.0/helgrind/tests/tc03_re_excl.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc03_re_excl tc03_re_excl.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc04_free_lock.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M=
-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind=
/3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc04_free_lock.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc04_free_lock tc04_free_lock.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc05_simple_race.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc05_simple_race.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc05_simple_race tc05_simple_race.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc06_two_races.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M=
-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind=
/3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc06_two_races.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc06_two_races tc06_two_races.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc07_hbl1-tc07_hbl1.o `test -f 'tc07_hbl1.c' || echo '/home/sarjoo=
deen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf=
-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/helgrind/te=
sts/'`tc07_hbl1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc07_hbl1 tc07_hbl1-tc07_hbl1.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc08_hbl2-tc08_hbl2.o `test -f 'tc08_hbl2.c' || echo '/home/sarjoo=
deen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf=
-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/helgrind/te=
sts/'`tc08_hbl2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc08_hbl2 tc08_hbl2-tc08_hbl2.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc09_bad_unlock.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22=
M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrin=
d/3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc09_bad_unlock.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc09_bad_unlock tc09_bad_unlock.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc10_rec_lock.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc10_rec_lock.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc10_rec_lock tc10_rec_lock.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc11_XCHG.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/helgrind/tests/tc11_XCHG.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc11_XCHG tc11_XCHG.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc12_rwl_trivial.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc12_rwl_trivial.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc12_rwl_trivial tc12_rwl_trivial.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc13_laog1.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/helgrind/tests/tc13_laog1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc13_laog1 tc13_laog1.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc14_laog_dinphils.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iw=
G22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valg=
rind/3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc14_laog_dinphils.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc14_laog_dinphils tc14_laog_dinphils.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc15_laog_lockdel.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc15_laog_lockdel.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc15_laog_lockdel tc15_laog_lockdel.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc16_byterace.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc16_byterace.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc16_byterace tc16_byterace.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc17_sembar.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-re=
lease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.=
15.0-r0/valgrind-3.15.0/helgrind/tests/tc17_sembar.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc17_sembar tc17_sembar.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc18_semabuse.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc18_semabuse.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc18_semabuse tc18_semabuse.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc19_shadowmem.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M=
-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind=
/3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc19_shadowmem.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc19_shadowmem tc19_shadowmem.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc21_pthonce.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-r=
elease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3=
.15.0-r0/valgrind-3.15.0/helgrind/tests/tc21_pthonce.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc21_pthonce tc21_pthonce.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc23_bogus_condwait.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/i=
wG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/val=
grind/3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc23_bogus_condwait.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc23_bogus_condwait tc23_bogus_condwait.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc24_nonzero_sem.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc24_nonzero_sem.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc24_nonzero_sem tc24_nonzero_sem.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tls_threads.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-re=
lease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.=
15.0-r0/valgrind-3.15.0/helgrind/tests/tls_threads.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tls_threads tls_threads.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc22_exit_w_lock.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc22_exit_w_lock.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc22_exit_w_lock tc22_exit_w_lock.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o bar_bad.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/helgrind/tests/bar_bad.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o bar_bad bar_bad.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o bar_trivial.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-re=
lease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.=
15.0-r0/valgrind-3.15.0/helgrind/tests/bar_trivial.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o bar_trivial bar_trivial.o -lpthread=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon=
/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnu=
eabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nip=
pon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-=
gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../inc=
lude -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/=
tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind=
-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_lin=
ux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-lo=
ng -g -fno-stack-protector   -g -feliminate-unused-debug-types -fvisibility=
-inlines-hidden -c -o bug322621.o /home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0/helgrind/tests/bug322621.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -g -feliminate-unuse=
d-debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -=
Wl,--as-needed -o bug322621 bug322621.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o tc20_verifywrap.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22=
M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrin=
d/3.15.0-r0/valgrind-3.15.0/helgrind/tests/tc20_verifywrap.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o tc20_verifywrap tc20_verifywrap.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/helgrind/tests -I../..  -I/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrin=
d -I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 =
-DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow=
 -Wno-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-typ=
es -c -o annotate_rwlock.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22=
M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrin=
d/3.15.0-r0/valgrind-3.15.0/helgrind/tests/annotate_rwlock.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o annotate_rwlock annotate_rwlock.o -lpthread=20
make[4]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/helgrind/tests'
make  check-local
make[4]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/helgrind/tests'
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
make[4]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/helgrind/tests'
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/helgrind/tests'
make[2]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/helgrind'
Making check in drd
make[2]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/drd'
Making check in .
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/drd'
mkdir -p ../.in_place; \
	for f in drd-arm-linux  vgpreload_drd-arm-linux.so  ; do \
	  rm -f ../.in_place/$f; \
	  ln -f -s ../drd/$f ../.in_place; \
	done
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
mkdir -p ../.in_place; \
	for f in ; do \
	  rm -f ../.in_place/$f.dSYM; \
	  ln -f -s ../drd/$f.dSYM ../.in_place; \
	done
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/drd'
Making check in tests
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/drd/tests'
make  annotate_hb_err annotate_hb_race annotate_ignore_rw annotate_ignore_w=
rite annotate_publish_hg annotate_static annotate_trace_memory bug-235681 c=
ustom_alloc concurrent_close dlopen_main dlopen_lib.so fork fp_race free_is=
_write hold_lock linuxthreads_det local_static memory_allocation monitor_ex=
ample new_delete pth_broadcast pth_cancel_locked pth_cleanup_handler pth_co=
nd_destroy_busy pth_cond_race pth_create_chain pth_detached pth_detached_se=
m pth_detached3 pth_inconsistent_cond_wait pth_mutex_reinit pth_process_sha=
red_mutex pth_uninitialized_cond recursive_mutex rwlock_race rwlock_test rw=
lock_type_checking sem_as_mutex sem_open sigalrm threaded-fork trylock unit=
_bitmap unit_vc boost_thread annotate_barrier annotate_rwlock annotate_sem =
atomic_var circular_buffer annotate_smart_pointer tsan_unittest std_atomic =
std_list std_string std_thread std_thread2  bug322621 matinv pth_barrier pt=
h_barrier_race pth_barrier_reinit pth_barrier_thr_cr thread_name  pth_spinl=
ock sem_wait
make[4]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/drd/tests'
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o annotate_hb_err.o /home/sarjoo=
deen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf=
-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/a=
nnotate_hb_err.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o annotate_hb_err annotate_hb_e=
rr.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o annotate_hb_race.o /home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/=
annotate_hb_race.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o annotate_hb_race annotate_hb_=
race.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o annotate_ignore_rw.o /home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/test=
s/annotate_ignore_rw.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o annotate_ignore_rw annotate_i=
gnore_rw.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o annotate_ignore_write.o /home/=
sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cort=
exa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/t=
ests/annotate_ignore_write.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o annotate_ignore_write annotat=
e_ignore_write.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o annotate_publish_hg.o /home/sa=
rjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortex=
a7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tes=
ts/annotate_publish_hg.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o annotate_publish_hg annotate_=
publish_hg.o -lpthread=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include =
-I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=3D=
1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long -g=
 -fno-stack-protector   -Wextra -Wno-inline -Wno-unused-parameter -Wno-unus=
ed-function -g -feliminate-unused-debug-types -fvisibility-inlines-hidden -=
c -o annotate_static-annotate_static.o `test -f 'annotate_static.cpp' || ec=
ho '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp=
/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.=
15.0/drd/tests/'`annotate_static.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -Wextra -Wno-inline =
-Wno-unused-parameter -Wno-unused-function -g -feliminate-unused-debug-type=
s -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-need=
ed -o annotate_static annotate_static-annotate_static.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o annotate_trace_memory.o /home/=
sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cort=
exa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/t=
ests/annotate_trace_memory.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o annotate_trace_memory annotat=
e_trace_memory.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o bug-235681.o /home/sarjoodeen/=
Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-=
neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/bug-23=
5681.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o bug-235681 bug-235681.o -lpth=
read=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o custom_alloc.o /home/sarjoodee=
n/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vf=
p-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/cust=
om_alloc.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o custom_alloc custom_alloc.o -=
lpthread=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include =
-I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=3D=
1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long -g=
 -fno-stack-protector   -Wextra -Wno-inline -Wno-unused-parameter -g -felim=
inate-unused-debug-types -fvisibility-inlines-hidden -c -o concurrent_close=
.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/=
work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.1=
5.0/drd/tests/concurrent_close.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -Wextra -Wno-inline =
-Wno-unused-parameter -g -feliminate-unused-debug-types -fvisibility-inline=
s-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o concurrent_clos=
e concurrent_close.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o dlopen_main.o /home/sarjoodeen=
/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp=
-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/dlope=
n_main.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o dlopen_main dlopen_main.o -ld=
l=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -fPIC -g -feliminate-unused-=
debug-types -c -o dlopen_lib_so-dlopen_lib.o `test -f 'dlopen_lib.c' || ech=
o '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/=
work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.1=
5.0/drd/tests/'`dlopen_lib.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -fPIC -g -feliminate-unused-debug-types -shared -fPIC -Wl,-O1 -Wl,--hash=
-style=3Dgnu -Wl,--as-needed -o dlopen_lib.so dlopen_lib_so-dlopen_lib.o -l=
pthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o fork.o /home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-p=
oky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/fork.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o fork fork.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o fp_race.o /home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/fp_race.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o fp_race fp_race.o -lpthread=
=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter  -g -feliminate-unused-debug-types -c -o free_is_write-free_is_write.o=
 `test -f 'free_is_write.c' || echo '/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/'`free_is_write.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter  -g -feliminate-unused-debug-types  -Wl=
,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o free_is_write free_is_write-=
free_is_write.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o hold_lock.o /home/sarjoodeen/P=
roject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-n=
eon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/hold_lo=
ck.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o hold_lock hold_lock.o -lpthre=
ad=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o linuxthreads_det.o /home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/=
linuxthreads_det.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o linuxthreads_det linuxthreads=
_det.o -lpthread=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include =
-I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=3D=
1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long -g=
 -fno-stack-protector   -Wextra -Wno-inline -Wno-unused-parameter -g -felim=
inate-unused-debug-types -fvisibility-inlines-hidden -c -o local_static.o /=
home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work=
/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/=
drd/tests/local_static.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -Wextra -Wno-inline =
-Wno-unused-parameter -g -feliminate-unused-debug-types -fvisibility-inline=
s-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o local_static lo=
cal_static.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o memory_allocation.o /home/sarj=
oodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7=
hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests=
/memory_allocation.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o memory_allocation memory_allo=
cation.o -lpthread=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include =
-I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=3D=
1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long -g=
 -fno-stack-protector   -Wextra -Wno-inline -Wno-unused-parameter -g -felim=
inate-unused-debug-types -fvisibility-inlines-hidden -c -o monitor_example.=
o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/drd/tests/monitor_example.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -Wextra -Wno-inline =
-Wno-unused-parameter -g -feliminate-unused-debug-types -fvisibility-inline=
s-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o monitor_example=
 monitor_example.o -lpthread=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include =
-I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=3D=
1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long -g=
 -fno-stack-protector   -Wextra -Wno-inline -Wno-unused-parameter  -g -feli=
minate-unused-debug-types -fvisibility-inlines-hidden -c -o new_delete-new_=
delete.o `test -f 'new_delete.cpp' || echo '/home/sarjoodeen/Project/2018/N=
ippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linu=
x-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/'`new_delete.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -Wextra -Wno-inline =
-Wno-unused-parameter  -g -feliminate-unused-debug-types -fvisibility-inlin=
es-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o new_delete new=
_delete-new_delete.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o pth_broadcast.o /home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/pth=
_broadcast.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_broadcast pth_broadcast.o=
 -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o pth_cancel_locked.o /home/sarj=
oodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7=
hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests=
/pth_cancel_locked.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_cancel_locked pth_cancel_=
locked.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o pth_cleanup_handler.o /home/sa=
rjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortex=
a7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tes=
ts/pth_cleanup_handler.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_cleanup_handler pth_clean=
up_handler.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o pth_cond_destroy_busy.o /home/=
sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cort=
exa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/t=
ests/pth_cond_destroy_busy.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_cond_destroy_busy pth_con=
d_destroy_busy.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o pth_cond_race.o /home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/pth=
_cond_race.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_cond_race pth_cond_race.o=
 -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter  -g -feliminate-unused-debug-types -c -o pth_create_chain-pth_create_c=
hain.o `test -f 'pth_create_chain.c' || echo '/home/sarjoodeen/Project/2018=
/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-li=
nux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/'`pth_create_chain=
.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter  -g -feliminate-unused-debug-types  -Wl=
,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_create_chain pth_create_=
chain-pth_create_chain.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter  -g -feliminate-unused-debug-types -c -o pth_detached-pth_detached.o `=
test -f 'pth_detached.c' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/'`pth_detached.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter  -g -feliminate-unused-debug-types  -Wl=
,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_detached pth_detached-pt=
h_detached.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o pth_detached_sem.o /home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/=
pth_detached_sem.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_detached_sem pth_detached=
_sem.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o pth_detached3.o /home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/pth=
_detached3.c
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/drd/tests/pth_detached3.c: In function 'main':
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/drd/tests/pth_detached3.c:24:3: warning: passing argument 1 of 'pthread_de=
tach' makes integer from pointer without a cast [enabled by default]
   pthread_detach((pthread_t*)(&thread + 8));
   ^
In file included from /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/drd/tests/pth_detached3.c:5:0:
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sys=
roots/iwg22m/usr/include/pthread.h:282:12: note: expected 'pthread_t' but a=
rgument is of type 'pthread_t *'
 extern int pthread_detach (pthread_t __th) __THROW;
            ^
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_detached3 pth_detached3.o=
 -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o pth_inconsistent_cond_wait.o /=
home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work=
/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/=
drd/tests/pth_inconsistent_cond_wait.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_inconsistent_cond_wait pt=
h_inconsistent_cond_wait.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o pth_mutex_reinit.o /home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/=
pth_mutex_reinit.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_mutex_reinit pth_mutex_re=
init.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o pth_process_shared_mutex.o /ho=
me/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/c=
ortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/dr=
d/tests/pth_process_shared_mutex.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_process_shared_mutex pth_=
process_shared_mutex.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o pth_uninitialized_cond.o /home=
/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cor=
texa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/=
tests/pth_uninitialized_cond.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_uninitialized_cond pth_un=
initialized_cond.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o recursive_mutex.o /home/sarjoo=
deen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf=
-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/r=
ecursive_mutex.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o recursive_mutex recursive_mut=
ex.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o rwlock_race.o /home/sarjoodeen=
/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp=
-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/rwloc=
k_race.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o rwlock_race rwlock_race.o -lp=
thread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter  -g -feliminate-unused-debug-types -c -o rwlock_test-rwlock_test.o `te=
st -f 'rwlock_test.c' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/i=
wG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/val=
grind/3.15.0-r0/valgrind-3.15.0/drd/tests/'`rwlock_test.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter  -g -feliminate-unused-debug-types  -Wl=
,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o rwlock_test rwlock_test-rwlo=
ck_test.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o rwlock_type_checking.o /home/s=
arjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/corte=
xa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/te=
sts/rwlock_type_checking.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o rwlock_type_checking rwlock_t=
ype_checking.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o sem_as_mutex.o /home/sarjoodee=
n/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vf=
p-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/sem_=
as_mutex.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o sem_as_mutex sem_as_mutex.o -=
lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o sem_open.o /home/sarjoodeen/Pr=
oject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-ne=
on-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/sem_open=
.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o sem_open sem_open.o -lpthread=
=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o sigalrm.o /home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/sigalrm.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o sigalrm sigalrm.o -lpthread=
=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o threaded-fork.o /home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/thr=
eaded-fork.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o threaded-fork threaded-fork.o=
 -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o trylock.o /home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/trylock.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o trylock trylock.o -lpthread=
=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -O2 -DENABLE_DRD_CONSISTENCY_CHECKS --param inline-unit-growth=3D900 -=
g -feliminate-unused-debug-types -c -o unit_bitmap-unit_bitmap.o `test -f '=
unit_bitmap.c' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-r=
elease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3=
.15.0-r0/valgrind-3.15.0/drd/tests/'`unit_bitmap.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -O2 -DENABLE_DRD_CONSISTENCY_CHECKS --p=
aram inline-unit-growth=3D900 -g -feliminate-unused-debug-types  -Wl,-O1 -W=
l,--hash-style=3Dgnu -Wl,--as-needed -o unit_bitmap unit_bitmap-unit_bitmap=
.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -DENABLE_DRD_CONSISTENCY_CHECKS -g -feliminate-unused-debug-types -c -=
o unit_vc-unit_vc.o `test -f 'unit_vc.c' || echo '/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/'`unit_vc.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -DENABLE_DRD_CONSISTENCY_CHECKS -g -fel=
iminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed =
-o unit_vc unit_vc-unit_vc.o =20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include =
-I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=3D=
1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long -g=
 -fno-stack-protector   -Wextra -Wno-inline -Wno-unused-parameter  -g -feli=
minate-unused-debug-types -fvisibility-inlines-hidden -c -o boost_thread-bo=
ost_thread.o `test -f 'boost_thread.cpp' || echo '/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/'`boost_thread=
.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -Wextra -Wno-inline =
-Wno-unused-parameter  -g -feliminate-unused-debug-types -fvisibility-inlin=
es-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o boost_thread b=
oost_thread-boost_thread.o -lboost_thread-mt -lboost_system-mt=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o annotate_barrier.o /home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/=
annotate_barrier.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o annotate_barrier annotate_bar=
rier.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o annotate_rwlock.o /home/sarjoo=
deen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf=
-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/a=
nnotate_rwlock.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o annotate_rwlock annotate_rwlo=
ck.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o annotate_sem.o /home/sarjoodee=
n/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vf=
p-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/anno=
tate_sem.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o annotate_sem annotate_sem.o -=
lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o atomic_var.o /home/sarjoodeen/=
Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-=
neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/atomic=
_var.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o atomic_var atomic_var.o -lpth=
read=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o circular_buffer.o /home/sarjoo=
deen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf=
-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/c=
ircular_buffer.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o circular_buffer circular_buff=
er.o -lpthread=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include =
-I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=3D=
1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long -g=
 -fno-stack-protector   -Wextra -Wno-inline -Wno-unused-parameter -g -felim=
inate-unused-debug-types -fvisibility-inlines-hidden -c -o annotate_smart_p=
ointer.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/buil=
d/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgri=
nd-3.15.0/drd/tests/annotate_smart_pointer.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -Wextra -Wno-inline =
-Wno-unused-parameter -g -feliminate-unused-debug-types -fvisibility-inline=
s-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o annotate_smart_=
pointer annotate_smart_pointer.o -lpthread=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include =
-I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=3D=
1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long -g=
 -fno-stack-protector   -Wextra -Wno-inline -Wno-unused-parameter -DTHREAD_=
WRAPPERS=3D'"tsan_thread_wrappers_pthread.h"' -g -feliminate-unused-debug-t=
ypes -fvisibility-inlines-hidden -c -o tsan_unittest-tsan_unittest.o `test =
-f 'tsan_unittest.cpp' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/=
iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/va=
lgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/'`tsan_unittest.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -Wextra -Wno-inline =
-Wno-unused-parameter -DTHREAD_WRAPPERS=3D'"tsan_thread_wrappers_pthread.h"=
' -g -feliminate-unused-debug-types -fvisibility-inlines-hidden  -Wl,-O1 -W=
l,--hash-style=3Dgnu -Wl,--as-needed -o tsan_unittest tsan_unittest-tsan_un=
ittest.o -lpthread=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include =
-I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=3D=
1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long -g=
 -fno-stack-protector   -Wextra -Wno-inline -Wno-unused-parameter -std=3Dc+=
+0x -Wno-sign-compare -g -feliminate-unused-debug-types -fvisibility-inline=
s-hidden -c -o std_atomic-std_atomic.o `test -f 'std_atomic.cpp' || echo '/=
home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work=
/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/=
drd/tests/'`std_atomic.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -Wextra -Wno-inline =
-Wno-unused-parameter -std=3Dc++0x -Wno-sign-compare -g -feliminate-unused-=
debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl=
,--as-needed -o std_atomic std_atomic-std_atomic.o -lpthread=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include =
-I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=3D=
1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long -g=
 -fno-stack-protector   -Wextra -Wno-inline -Wno-unused-parameter -std=3Dc+=
+0x -Wno-sign-compare -g -feliminate-unused-debug-types -fvisibility-inline=
s-hidden -c -o std_list-std_list.o `test -f 'std_list.cpp' || echo '/home/s=
arjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/corte=
xa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/te=
sts/'`std_list.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -Wextra -Wno-inline =
-Wno-unused-parameter -std=3Dc++0x -Wno-sign-compare -g -feliminate-unused-=
debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl=
,--as-needed -o std_list std_list-std_list.o -lpthread=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include =
-I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=3D=
1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long -g=
 -fno-stack-protector   -Wextra -Wno-inline -Wno-unused-parameter -std=3Dc+=
+0x -Wno-sign-compare -g -feliminate-unused-debug-types -fvisibility-inline=
s-hidden -c -o std_string-std_string.o `test -f 'std_string.cpp' || echo '/=
home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work=
/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/=
drd/tests/'`std_string.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -Wextra -Wno-inline =
-Wno-unused-parameter -std=3Dc++0x -Wno-sign-compare -g -feliminate-unused-=
debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl=
,--as-needed -o std_string std_string-std_string.o -lpthread=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include =
-I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=3D=
1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long -g=
 -fno-stack-protector   -Wextra -Wno-inline -Wno-unused-parameter -std=3Dc+=
+0x -g -feliminate-unused-debug-types -fvisibility-inlines-hidden -c -o std=
_thread-std_thread.o `test -f 'std_thread.cpp' || echo '/home/sarjoodeen/Pr=
oject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-ne=
on-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/'`std_th=
read.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -Wextra -Wno-inline =
-Wno-unused-parameter -std=3Dc++0x -g -feliminate-unused-debug-types -fvisi=
bility-inlines-hidden -Wl,--no-as-needed -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl=
,--as-needed -o std_thread std_thread-std_thread.o -lpthread=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include =
-I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=3D=
1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long -g=
 -fno-stack-protector   -Wextra -Wno-inline -Wno-unused-parameter -std=3Dc+=
+0x -g -feliminate-unused-debug-types -fvisibility-inlines-hidden -c -o std=
_thread2-std_thread2.o `test -f 'std_thread2.cpp' || echo '/home/sarjoodeen=
/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp=
-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/'`std=
_thread2.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -Wextra -Wno-inline =
-Wno-unused-parameter -std=3Dc++0x -g -feliminate-unused-debug-types -fvisi=
bility-inlines-hidden -Wl,--no-as-needed -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl=
,--as-needed -o std_thread2 std_thread2-std_thread2.o -lpthread=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include =
-I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=3D=
1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long -g=
 -fno-stack-protector   -Wextra -Wno-inline -Wno-unused-parameter -g -felim=
inate-unused-debug-types -fvisibility-inlines-hidden -c -o bug322621.o /hom=
e/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/co=
rtexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd=
/tests/bug322621.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -Wextra -Wno-inline =
-Wno-unused-parameter -g -feliminate-unused-debug-types -fvisibility-inline=
s-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o bug322621 bug32=
2621.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter  -g -feliminate-unused-debug-types -c -o matinv-matinv.o `test -f 'mat=
inv.c' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/drd/tests/'`matinv.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter  -g -feliminate-unused-debug-types  -Wl=
,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o matinv matinv-matinv.o -lpth=
read -lm=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter  -g -feliminate-unused-debug-types -c -o pth_barrier-pth_barrier.o `te=
st -f 'pth_barrier.c' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/i=
wG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/val=
grind/3.15.0-r0/valgrind-3.15.0/drd/tests/'`pth_barrier.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter  -g -feliminate-unused-debug-types  -Wl=
,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_barrier pth_barrier-pth_=
barrier.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o pth_barrier_race.o /home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/=
pth_barrier_race.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_barrier_race pth_barrier_=
race.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o pth_barrier_reinit.o /home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/test=
s/pth_barrier_reinit.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_barrier_reinit pth_barrie=
r_reinit.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o pth_barrier_thr_cr.o /home/sar=
joodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa=
7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/test=
s/pth_barrier_thr_cr.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_barrier_thr_cr pth_barrie=
r_thr_cr.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o thread_name.o /home/sarjoodeen=
/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp=
-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/threa=
d_name.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o thread_name thread_name.o -lp=
thread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/201=
8/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-l=
inux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I.=
./../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP=
_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno=
-long-long -g -fno-stack-protector    -Wextra -Wno-inline -Wno-unused-param=
eter -g -feliminate-unused-debug-types -c -o pth_spinlock.o /home/sarjoodee=
n/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vf=
p-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/tests/pth_=
spinlock.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wextr=
a -Wno-inline -Wno-unused-parameter -g -feliminate-unused-debug-types  -Wl,=
-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o pth_spinlock pth_spinlock.o -=
lpthread=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/drd/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include =
-I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/w=
ork/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15=
.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=3D=
1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long -g=
 -fno-stack-protector   -Wextra -Wno-inline -Wno-unused-parameter -g -felim=
inate-unused-debug-types -fvisibility-inlines-hidden -c -o sem_wait.o /home=
/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cor=
texa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/drd/=
tests/sem_wait.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -Wextra -Wno-inline =
-Wno-unused-parameter -g -feliminate-unused-debug-types -fvisibility-inline=
s-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o sem_wait sem_wa=
it.o -lpthread=20
make[4]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/drd/tests'
make  check-local
make[4]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/drd/tests'
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
make[4]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/drd/tests'
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/drd/tests'
make[2]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/drd'
Making check in massif
make[2]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/massif'
Making check in .
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/massif'
mkdir -p ../.in_place; \
	for f in massif-arm-linux  vgpreload_massif-arm-linux.so  ; do \
	  rm -f ../.in_place/$f; \
	  ln -f -s ../massif/$f ../.in_place; \
	done
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
mkdir -p ../.in_place; \
	for f in ; do \
	  rm -f ../.in_place/$f.dSYM; \
	  ln -f -s ../massif/$f.dSYM ../.in_place; \
	done
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/massif'
Making check in tests
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/massif/tests'
make  alloc-fns basic big-alloc culling1 culling2 custom_alloc deep ignored=
 ignoring inlinfomalloc insig long-names long-time mmapunmap malloc_usable =
new-cpp null one overloaded-new pages_as_heap peak realloc thresholds zero
make[4]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/massif/tests'
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o alloc-fns.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/massif/tests/alloc-fns.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o alloc-fns alloc-fns.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o basic.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp=
/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/v=
algrind-3.15.0/massif/tests/basic.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o basic basic.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o big-alloc.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/massif/tests/big-alloc.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o big-alloc big-alloc.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o culling1.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/massif/tests/culling1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o culling1 culling1.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o culling2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/massif/tests/culling2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o culling2 culling2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o custom_alloc.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/massif/tests/custom_alloc.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o custom_alloc custom_alloc.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o deep.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/=
build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/va=
lgrind-3.15.0/massif/tests/deep.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o deep deep.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o ignored.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/massif/tests/ignored.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o ignored ignored.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o ignoring.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/massif/tests/ignoring.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o ignoring ignoring.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -w -g -feliminate-unused-debug-typ=
es -c -o inlinfomalloc-inlinfomalloc.o `test -f 'inlinfomalloc.c' || echo '=
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wor=
k/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0=
/massif/tests/'`inlinfomalloc.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -w -g =
-feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-nee=
ded -o inlinfomalloc inlinfomalloc-inlinfomalloc.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o insig.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp=
/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/v=
algrind-3.15.0/massif/tests/insig.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o insig insig.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o long-names.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/massif/tests/long-names.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o long-names long-names.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o long-time.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/massif/tests/long-time.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o long-time long-time.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o mmapunmap.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/massif/tests/mmapunmap.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o mmapunmap mmapunmap.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o malloc_usable.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/massif/tests/malloc_usable.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o malloc_usable malloc_usable.o =20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippo=
n/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gn=
ueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../inclu=
de -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tm=
p/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3=
.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=
=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long=
 -g -fno-stack-protector   -g -feliminate-unused-debug-types -fvisibility-i=
nlines-hidden -c -o new-cpp.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iw=
G22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valg=
rind/3.15.0-r0/valgrind-3.15.0/massif/tests/new-cpp.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -g -feliminate-unuse=
d-debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -=
Wl,--as-needed -o new-cpp new-cpp.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o null.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/=
build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/va=
lgrind-3.15.0/massif/tests/null.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o null null.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o one.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/massif/tests/one.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o one one.o =20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippo=
n/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gn=
ueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../inclu=
de -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tm=
p/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3=
.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=
=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long=
 -g -fno-stack-protector   -g -feliminate-unused-debug-types -fvisibility-i=
nlines-hidden -c -o overloaded-new.o /home/sarjoodeen/Project/2018/Nippon/Y=
OCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnuea=
bi/valgrind/3.15.0-r0/valgrind-3.15.0/massif/tests/overloaded-new.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -g -feliminate-unuse=
d-debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -=
Wl,--as-needed -o overloaded-new overloaded-new.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o pages_as_heap.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/massif/tests/pages_as_heap.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pages_as_heap pages_as_heap.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o peak.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/=
build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/va=
lgrind-3.15.0/massif/tests/peak.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o peak peak.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o realloc.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/massif/tests/realloc.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o realloc realloc.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o thresholds.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/massif/tests/thresholds.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o thresholds thresholds.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/massif/tests -I../..  -I/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Proje=
ct/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-=
poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjo=
odeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7h=
f-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind =
-I../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -D=
VGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -=
Wno-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types =
-c -o zero.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/=
build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/va=
lgrind-3.15.0/massif/tests/zero.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o zero zero.o =20
make[4]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/massif/tests'
make  check-local
make[4]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/massif/tests'
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
make[4]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/massif/tests'
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/massif/tests'
make[2]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/massif'
Making check in dhat
make[2]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/dhat'
Making check in .
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/dhat'
mkdir -p ../.in_place; \
	for f in dhat-arm-linux  vgpreload_dhat-arm-linux.so  ; do \
	  rm -f ../.in_place/$f; \
	  ln -f -s ../dhat/$f ../.in_place; \
	done
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
mkdir -p ../.in_place; \
	for f in ; do \
	  rm -f ../.in_place/$f.dSYM; \
	  ln -f -s ../dhat/$f.dSYM ../.in_place; \
	done
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/dhat'
Making check in tests
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/dhat/tests'
make  acc basic big empty sig single
make[4]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/dhat/tests'
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/dhat/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o acc.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/bui=
ld/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgr=
ind-3.15.0/dhat/tests/acc.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o acc acc.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/dhat/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o basic.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/dhat/tests/basic.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o basic basic.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/dhat/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o big.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/bui=
ld/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgr=
ind-3.15.0/dhat/tests/big.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o big big.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/dhat/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o empty.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/dhat/tests/empty.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o empty empty.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/dhat/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o sig.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/bui=
ld/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgr=
ind-3.15.0/dhat/tests/sig.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o sig sig.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/dhat/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o single.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/=
build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/va=
lgrind-3.15.0/dhat/tests/single.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o single single.o =20
make[4]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/dhat/tests'
make  check-local
make[4]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/dhat/tests'
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
make[4]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/dhat/tests'
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/dhat/tests'
make[2]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/dhat'
Making check in lackey
make[2]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/lackey'
Making check in .
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/lackey'
mkdir -p ../.in_place; \
	for f in lackey-arm-linux  ; do \
	  rm -f ../.in_place/$f; \
	  ln -f -s ../lackey/$f ../.in_place; \
	done
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
mkdir -p ../.in_place; \
	for f in ; do \
	  rm -f ../.in_place/$f.dSYM; \
	  ln -f -s ../lackey/$f.dSYM ../.in_place; \
	done
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/lackey'
Making check in tests
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/lackey/tests'
make[3]: Nothing to be done for `check'.
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/lackey/tests'
make[2]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/lackey'
Making check in none
make[2]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/none'
Making check in .
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/none'
mkdir -p ../.in_place; \
	for f in none-arm-linux  ; do \
	  rm -f ../.in_place/$f; \
	  ln -f -s ../none/$f ../.in_place; \
	done
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
mkdir -p ../.in_place; \
	for f in ; do \
	  rm -f ../.in_place/$f.dSYM; \
	  ln -f -s ../none/$f.dSYM ../.in_place; \
	done
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/none'
Making check in tests
make[3]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/none/tests'
Making check in .
make[4]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/none/tests'
make  args async-sigs bitfield1 bug129866 bug234814 closeall coolo_strlen d=
iscard exec-sigmask execve faultstatus fcntl_setown fdleak_cmsg fdleak_crea=
t fdleak_dup fdleak_dup2 fdleak_fcntl fdleak_ipv4 fdleak_open fdleak_pipe f=
dleak_socketpair floored fork fucomip ioctl_moans libvex_test libvexmultiar=
ch_test manythreads mmap_fcntl_bug munmap_exe map_unaligned map_unmap mq no=
cwd pending procfs-cmdline-exe pselect_alarm pselect_sigmask_null pth_atfor=
k1 pth_blockedsig pth_cancel1 pth_cancel2 pth_cvsimple pth_empty pth_exit p=
th_exit2 pth_mutexspeed pth_once pth_rwlock pth_stackalign pth_2sig pth_ter=
m_signal rcrl readline1 require-text-symbol res_search resolv rlimit_nofile=
 selfrun sem semlimit sha1_test shortpush shorts stackgrowth sigstackgrowth=
 sigsusp syscall-restart1 syscall-restart2 syslog system thread-exits threa=
ded-fork threadederrno timestamp tls tls.so tls2.so unit_debuglog valgrind_=
cpp_test vgprintf vgprintf_nvalgrind coolo_sigaction gxx304 process_vm_read=
v_writev nestedfns rlimit64_nofile ppoll_alarm ansi=20
make[5]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/none/tests'
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o args.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/bu=
ild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valg=
rind-3.15.0/none/tests/args.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o args args.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o async-sigs.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/none/tests/async-sigs.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o async-sigs async-sigs.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o bitfield1.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/none/tests/bitfield1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o bitfield1 bitfield1.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o bug129866.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/none/tests/bug129866.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o bug129866 bug129866.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o bug234814.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/none/tests/bug234814.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o bug234814 bug234814.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o closeall.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/none/tests/closeall.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o closeall closeall.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o coolo_strlen.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/none/tests/coolo_strlen.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o coolo_strlen coolo_strlen.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o discard.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp=
/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/v=
algrind-3.15.0/none/tests/discard.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o discard discard.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o exec-sigmask.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/none/tests/exec-sigmask.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o exec-sigmask exec-sigmask.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -Wno-nonnull -g -feliminate-unused-d=
ebug-types -c -o execve-execve.o `test -f 'execve.c' || echo '/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/none/tests/'=
`execve.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wno-n=
onnull -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -W=
l,--as-needed -o execve execve-execve.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o faultstatus.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/none/tests/faultstatus.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o faultstatus faultstatus.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o fcntl_setown.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/none/tests/fcntl_setown.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o fcntl_setown fcntl_setown.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1     -g -feliminate-unused-debu=
g-types -c -o fdleak_cmsg-fdleak_cmsg.o `test -f 'fdleak_cmsg.c' || echo '/=
home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work=
/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/=
none/tests/'`fdleak_cmsg.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99  -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,-=
-as-needed -o fdleak_cmsg fdleak_cmsg-fdleak_cmsg.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o fdleak_creat.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/none/tests/fdleak_creat.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o fdleak_creat fdleak_creat.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o fdleak_dup.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/none/tests/fdleak_dup.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o fdleak_dup fdleak_dup.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o fdleak_dup2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/none/tests/fdleak_dup2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o fdleak_dup2 fdleak_dup2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o fdleak_fcntl.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/none/tests/fdleak_fcntl.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o fdleak_fcntl fdleak_fcntl.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o fdleak_ipv4.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/none/tests/fdleak_ipv4.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o fdleak_ipv4 fdleak_ipv4.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o fdleak_open.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/none/tests/fdleak_open.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o fdleak_open fdleak_open.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o fdleak_pipe.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/none/tests/fdleak_pipe.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o fdleak_pipe fdleak_pipe.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o fdleak_socketpair.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-r=
elease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3=
.15.0-r0/valgrind-3.15.0/none/tests/fdleak_socketpair.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o fdleak_socketpair fdleak_socketpair.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o floored.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp=
/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/v=
algrind-3.15.0/none/tests/floored.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o floored floored.o -lm=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o fork.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/bu=
ild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valg=
rind-3.15.0/none/tests/fork.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o fork fork.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o fucomip.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp=
/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/v=
algrind-3.15.0/none/tests/fucomip.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o fucomip fucomip.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o ioctl_moans.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/none/tests/ioctl_moans.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o ioctl_moans ioctl_moans.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-types -=
c -o libvex_test-libvex_test.o `test -f 'libvex_test.c' || echo '/home/sarj=
oodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7=
hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/none/test=
s/'`libvex_test.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o libvex_test libvex_test-libvex_test.o ../../VEX/libvex-arm-linux.a =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-types -=
c -o libvexmultiarch_test-libvex_test.o `test -f 'libvex_test.c' || echo '/=
home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work=
/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/=
none/tests/'`libvex_test.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o libvexmultiarch_test libvexmultiarch_test-libvex_test.o ../../VEX/libv=
exmultiarch-arm-linux.a ../../VEX/libvex-arm-linux.a =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o manythreads.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/none/tests/manythreads.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o manythreads manythreads.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o mmap_fcntl_bug.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/none/tests/mmap_fcntl_bug.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o mmap_fcntl_bug mmap_fcntl_bug.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o munmap_exe.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/none/tests/munmap_exe.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o munmap_exe munmap_exe.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o map_unaligned.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/none/tests/map_unaligned.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o map_unaligned map_unaligned.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o map_unmap.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/none/tests/map_unmap.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o map_unmap map_unmap.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o mq.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/buil=
d/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgri=
nd-3.15.0/none/tests/mq.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o mq mq.o -lrt=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o nocwd.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/none/tests/nocwd.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o nocwd nocwd.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o pending.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp=
/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/v=
algrind-3.15.0/none/tests/pending.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pending pending.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o procfs-cmdline-exe.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests/procfs-cmdline-exe.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o procfs-cmdline-exe procfs-cmdline-exe.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o pselect_alarm.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/none/tests/pselect_alarm.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pselect_alarm pselect_alarm.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o pselect_sigmask_null.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22=
M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrin=
d/3.15.0-r0/valgrind-3.15.0/none/tests/pselect_sigmask_null.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pselect_sigmask_null pselect_sigmask_null.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o pth_atfork1.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/none/tests/pth_atfork1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pth_atfork1 pth_atfork1.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o pth_blockedsig.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/none/tests/pth_blockedsig.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pth_blockedsig pth_blockedsig.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -Wno-shadow -g -feliminate-unused-de=
bug-types -c -o pth_cancel1-pth_cancel1.o `test -f 'pth_cancel1.c' || echo =
'/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/wo=
rk/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.=
0/none/tests/'`pth_cancel1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wno-s=
hadow -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl=
,--as-needed -o pth_cancel1 pth_cancel1-pth_cancel1.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o pth_cancel2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/none/tests/pth_cancel2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pth_cancel2 pth_cancel2.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o pth_cvsimple.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/none/tests/pth_cvsimple.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pth_cvsimple pth_cvsimple.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o pth_empty.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/none/tests/pth_empty.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pth_empty pth_empty.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o pth_exit.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/none/tests/pth_exit.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pth_exit pth_exit.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o pth_exit2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/none/tests/pth_exit2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pth_exit2 pth_exit2.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o pth_mutexspeed.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/none/tests/pth_mutexspeed.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pth_mutexspeed pth_mutexspeed.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o pth_once.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/none/tests/pth_once.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pth_once pth_once.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o pth_rwlock-pth_rwlock.o `test -f 'pth_rwlock.c' || echo '/home/sarjoode=
en/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-v=
fp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/none/tests/'`=
pth_rwlock.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pth_rwlock pth_rwlock-pth_rwlock.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o pth_stackalign.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/none/tests/pth_stackalign.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pth_stackalign pth_stackalign.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o pth_2sig.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/none/tests/pth_2sig.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pth_2sig pth_2sig.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o pth_term_signal.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/none/tests/pth_term_signal.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o pth_term_signal pth_term_signal.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o rcrl.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/bu=
ild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valg=
rind-3.15.0/none/tests/rcrl.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o rcrl rcrl.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o readline1.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/none/tests/readline1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o readline1 readline1.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o require-text-symbol.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M=
-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind=
/3.15.0-r0/valgrind-3.15.0/none/tests/require-text-symbol.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o require-text-symbol require-text-symbol.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o res_search.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-=
bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r=
0/valgrind-3.15.0/none/tests/res_search.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o res_search res_search.o -lresolv -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-types -=
c -o resolv-resolv.o `test -f 'resolv.c' || echo '/home/sarjoodeen/Project/=
2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-pok=
y-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/none/tests/'`resolv.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o resolv resolv-resolv.o -lresolv -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o rlimit_nofile.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/none/tests/rlimit_nofile.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o rlimit_nofile rlimit_nofile.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o selfrun.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp=
/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/v=
algrind-3.15.0/none/tests/selfrun.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o selfrun selfrun.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o sem.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/bui=
ld/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgr=
ind-3.15.0/none/tests/sem.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o sem sem.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o semlimit.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/none/tests/semlimit.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o semlimit semlimit.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector     -g -feliminate-unused-debug-types -=
c -o sha1_test-sha1_test.o `test -f 'sha1_test.c' || echo '/home/sarjoodeen=
/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp=
-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/none/tests/'`sh=
a1_test.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector     -g -f=
eliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-neede=
d -o sha1_test sha1_test-sha1_test.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o shortpush.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/none/tests/shortpush.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o shortpush shortpush.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o shorts.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/=
build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/va=
lgrind-3.15.0/none/tests/shorts.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o shorts shorts.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o stackgrowth.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/none/tests/stackgrowth.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o stackgrowth stackgrowth.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o sigstackgrowth.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rele=
ase-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15=
.0-r0/valgrind-3.15.0/none/tests/sigstackgrowth.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o sigstackgrowth sigstackgrowth.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o sigsusp.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp=
/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/v=
algrind-3.15.0/none/tests/sigsusp.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o sigsusp sigsusp.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o syscall-restart1.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-re=
lease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.=
15.0-r0/valgrind-3.15.0/none/tests/syscall-restart1.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o syscall-restart1 syscall-restart1.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o syscall-restart2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-re=
lease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.=
15.0-r0/valgrind-3.15.0/none/tests/syscall-restart2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o syscall-restart2 syscall-restart2.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o syslog.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/=
build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/va=
lgrind-3.15.0/none/tests/syslog.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o syslog syslog.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o system.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/=
build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/va=
lgrind-3.15.0/none/tests/system.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o system system.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o thread-exits.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-releas=
e-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0=
-r0/valgrind-3.15.0/none/tests/thread-exits.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o thread-exits thread-exits.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o threaded-fork.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/none/tests/threaded-fork.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o threaded-fork threaded-fork.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o threadederrno-threadederrno.o `test -f 'threadederrno.c' || echo '/home=
/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cor=
texa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/none=
/tests/'`threadederrno.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o threadederrno threadederrno-threadederrno.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o timestamp.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/none/tests/timestamp.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o timestamp timestamp.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o tls.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/bui=
ld/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgr=
ind-3.15.0/none/tests/tls.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o tls2.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/bu=
ild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valg=
rind-3.15.0/none/tests/tls2.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -fPIC -g -feliminate-unused-debug-ty=
pes -c -o tls_so-tls_so.o `test -f 'tls_so.c' || echo '/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/none/tests/'`tls_so=
.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o tls2_so.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp=
/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/v=
algrind-3.15.0/none/tests/tls2_so.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types -shared -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as=
-needed -o tls2.so tls2_so.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -fPIC =
-g -feliminate-unused-debug-types -Wl,-rpath,/usr/lib/valgrind/ptest/none/t=
ests -shared -fPIC -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o tls.so=
 tls_so-tls_so.o tls2.so=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types -Wl,-rpath,/usr/lib/valgrind/ptest/none/tests -=
Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -o tls tls.o tls2.o tls.so tl=
s2.so -lpthread=20
make[5]: `tls.so' is up to date.
make[5]: `tls2.so' is up to date.
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o unit_debuglog.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-relea=
se-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.=
0-r0/valgrind-3.15.0/none/tests/unit_debuglog.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o unit_debuglog unit_debuglog.o =20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOC=
TO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi=
/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/=
YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnue=
abi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/2=
018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky=
-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include=
 -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/=
work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.1=
5.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=
=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long=
 -g -fno-stack-protector   -g -feliminate-unused-debug-types -fvisibility-i=
nlines-hidden -c -o valgrind_cpp_test.o /home/sarjoodeen/Project/2018/Nippo=
n/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gn=
ueabi/valgrind/3.15.0-r0/valgrind-3.15.0/none/tests/valgrind_cpp_test.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -g -feliminate-unuse=
d-debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -=
Wl,--as-needed -o valgrind_cpp_test valgrind_cpp_test.o -lstdc++=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o vgprintf.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bs=
p/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/=
valgrind-3.15.0/none/tests/vgprintf.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o vgprintf vgprintf.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -DNVALGRIND -g -feliminate-=
unused-debug-types -c -o vgprintf_nvalgrind-vgprintf.o `test -f 'vgprintf.c=
' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/bu=
ild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valg=
rind-3.15.0/none/tests/'`vgprintf.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DNVALGRIND -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=
=3Dgnu -Wl,--as-needed -o vgprintf_nvalgrind vgprintf_nvalgrind-vgprintf.o =
=20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOC=
TO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi=
/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/=
YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnue=
abi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/2=
018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky=
-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include=
 -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/=
work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.1=
5.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=
=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long=
 -g -fno-stack-protector   -g -feliminate-unused-debug-types -fvisibility-i=
nlines-hidden -c -o coolo_sigaction.o /home/sarjoodeen/Project/2018/Nippon/=
YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnue=
abi/valgrind/3.15.0-r0/valgrind-3.15.0/none/tests/coolo_sigaction.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -g -feliminate-unuse=
d-debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -=
Wl,--as-needed -o coolo_sigaction coolo_sigaction.o =20
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -DHAVE_CON=
FIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/b=
uild/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/val=
grind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/2018/Nippon/YOC=
TO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi=
/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project/2018/Nippon/=
YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnue=
abi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjoodeen/Project/2=
018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky=
-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I../../include=
 -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/=
work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.1=
5.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVGP_arm_linux=
=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wno-long-long=
 -g -fno-stack-protector   -g -feliminate-unused-debug-types -fvisibility-i=
nlines-hidden -c -o gxx304.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/valgrind-3.15.0/none/tests/gxx304.cpp
arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -Winline -=
Wall -Wshadow -Wno-long-long -g -fno-stack-protector   -g -feliminate-unuse=
d-debug-types -fvisibility-inlines-hidden  -Wl,-O1 -Wl,--hash-style=3Dgnu -=
Wl,--as-needed -o gxx304 gxx304.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o process_vm_readv_writev.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iw=
G22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valg=
rind/3.15.0-r0/valgrind-3.15.0/none/tests/process_vm_readv_writev.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o process_vm_readv_writev process_vm_readv_writev.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o nestedfns-nestedfns.o `test -f 'nestedfns.c' || echo '/home/sarjoodeen/=
Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-=
neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/none/tests/'`nes=
tedfns.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o nestedfns nestedfns-nestedfns.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o rlimit64_nofile.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-rel=
ease-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.1=
5.0-r0/valgrind-3.15.0/none/tests/rlimit64_nofile.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o rlimit64_nofile rlimit64_nofile.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -g -feliminate-unused-debug-types -c=
 -o ppoll_alarm.o /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release=
-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-=
r0/valgrind-3.15.0/none/tests/ppoll_alarm.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -g -fe=
liminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -o ppoll_alarm ppoll_alarm.o -lpthread=20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests -I../..  -I/home/sarjoodeen/Project/20=
18/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/Project=
/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-po=
ky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/sarjood=
een/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coregrind -I=
../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-b=
sp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0=
/valgrind-3.15.0/VEX/pub -I../../VEX/pub -DVGA_arm=3D1 -DVGO_linux=3D1 -DVG=
P_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall -Wshadow -Wn=
o-long-long -g -fno-stack-protector    -ansi -g -feliminate-unused-debug-ty=
pes -c -o ansi-ansi.o `test -f 'ansi.c' || echo '/home/sarjoodeen/Project/2=
018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky=
-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/none/tests/'`ansi.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -ansi =
-g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-=
needed -o ansi ansi-ansi.o =20
make[5]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/none/tests'
make  check-local
make[5]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/none/tests'
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
make[5]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/none/tests'
make[4]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/none/tests'
Making check in scripts
make[4]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/none/tests/scripts'
make  check-local
make[5]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/none/tests/scripts'
for f in ; do \
	  if [ ! -e $f.dSYM  -o  $f -nt $f.dSYM ] ; then \
	      echo "dsymutil $f"; \
	      dsymutil $f; \
	  fi; \
	done
make[5]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/none/tests/scripts'
make[4]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/none/tests/scripts'
Making check in arm
make[4]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/none/tests/arm'
make  allexec intdiv ldrt ldrt_arm neon128 neon64 v6intARM v6intThumb v6med=
ia v8crypto_a v8crypto_t v8fpsimd_a v8fpsimd_t v8memory_a v8memory_t vcvt_f=
ixed_float_VFP vfp vfpv4_fma
make[5]: Entering directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG=
22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgr=
ind/3.15.0-r0/build/none/tests/arm'
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests/arm -I../../..  -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/=
Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-=
neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/=
sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cort=
exa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coreg=
rind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M=
-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind=
/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -DVGO_l=
inux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall=
 -Wshadow -Wno-long-long -g -fno-stack-protector    -Wno-nonnull -g -felimi=
nate-unused-debug-types -c -o allexec-allexec.o `test -f 'allexec.c' || ech=
o '/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/=
work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.1=
5.0/none/tests/arm/'`allexec.c
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -Winline -Wall -Wshadow -Wno-long-long -g -fno-stack-protector    -Wno-n=
onnull -g -feliminate-unused-debug-types  -Wl,-O1 -Wl,--hash-style=3Dgnu -W=
l,--as-needed -o allexec allexec-allexec.o =20
arm-poky-linux-gnueabi-gcc  -march=3Darmv7-a -mthumb-interwork -mfloat-abi=
=3Dhard -mfpu=3Dneon -mtune=3Dcortex-a7 --sysroot=3D/home/sarjoodeen/Projec=
t/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/sysroots/iwg22m -std=3Dgnu=
99 -DHAVE_CONFIG_H -I. -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/valgrind-3.15.0/none/tests/arm -I../../..  -I/home/sarjoodeen/Pro=
ject/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neo=
n-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0 -I/home/sarjoodeen/=
Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-=
neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/include -I/home/=
sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cort=
exa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/valgrind-3.15.0/coreg=
rind -I../../../include -I/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M=
-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind=
/3.15.0-r0/valgrind-3.15.0/VEX/pub -I../../../VEX/pub -DVGA_arm=3D1 -DVGO_l=
inux=3D1 -DVGP_arm_linux=3D1 -DVGPV_arm_linux_vanilla=3D1    -Winline -Wall=
 -Wshadow -Wno-long-long -g -fno-stack-protector    -g -march=3Darmv7ve -mc=
pu=3Dcortex-a15 -mthumb -g -feliminate-unused-debug-types -c -o intdiv-intd=
iv.o `test -f 'intdiv.c' || echo '/home/sarjoodeen/Project/2018/Nippon/YOCT=
O/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/=
valgrind/3.15.0-r0/valgrind-3.15.0/none/tests/arm/'`intdiv.c
arm-poky-linux-gnueabi-gcc: error: unrecognized argument in option '-march=
=3Darmv7ve'
arm-poky-linux-gnueabi-gcc: note: valid arguments to '-march=3D' are: armv2=
 armv2a armv3 armv3m armv4 armv4t armv5 armv5e armv5t armv5te armv6 armv6-m=
 armv6j armv6k armv6s-m armv6t2 armv6z armv6zk armv7 armv7-a armv7-m armv7-=
r armv7e-m armv8-a armv8-a+crc iwmmxt iwmmxt2 native
make[5]: *** [intdiv-intdiv.o] Error 1
make[5]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/none/tests/arm'
make[4]: *** [check-am] Error 2
make[4]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/none/tests/arm'
make[3]: *** [check-recursive] Error 1
make[3]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/none/tests'
make[2]: *** [check-recursive] Error 1
make[2]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build/none'
make[1]: *** [check-recursive] Error 1
make[1]: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG2=
2M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgri=
nd/3.15.0-r0/build'
make: *** [check] Error 2
make: Leaving directory `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-=
release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/=
3.15.0-r0/build'
ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.
ERROR: Function failed: do_compile_ptest_base (log file is located at /home=
/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cor=
texa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/temp/log.do_compile_=
ptest_base.29480)

--------------44ED2778D79CB5136D74C2F4--
