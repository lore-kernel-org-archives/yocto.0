Return-Path: <03676470562-0001@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB224E00BE7; Sat,  7 May 2016 12:13:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	FROM_LOCAL_DIGITS, FROM_LOCAL_HEX, FROM_STARTS_WITH_NUMS,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.7 FROM_STARTS_WITH_NUMS From: starts with several
	numbers
	*  0.0 FROM_LOCAL_DIGITS From: localpart has long digit sequence
	*  0.0 FROM_LOCAL_HEX From: localpart has long hexadecimal sequence
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (03676470562-0001[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.15 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 304 seconds by postgrey-1.32 at yocto-www;
	Sat, 07 May 2016 12:13:05 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C1CFE00AC8
	for <yocto@yoctoproject.org>; Sat,  7 May 2016 12:13:05 -0700 (PDT)
Received: from [192.168.1.23] ([79.252.91.61]) by mail.gmx.com (mrgmx003) with
	ESMTPSA (Nemesis) id 0MXqaN-1bAxZo2Ok3-00WpGG for
	<yocto@yoctoproject.org>; Sat, 07 May 2016 21:07:59 +0200
To: yocto@yoctoproject.org
From: Thilo Graf <03676470562-0001@gmx.de>
Message-ID: <58d5375a-323c-97fd-19b6-0b99154c49a7@gmx.de>
Date: Sat, 7 May 2016 21:08:25 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.0
MIME-Version: 1.0
X-Provags-ID: V03:K0:u7jGyUAoD57gGo/t75JqlgTxkEo4tQbbZQTLfiCV5coG3CnbPtK
	oaiOjz6VE4AcPrSQhnR7mEicJmnwVeLEkRVDKBdGkvx7KRGSOHcSVLq1/AYe+Xxbm7fGu7y
	XxMi4orPlCDTWSlcI/D4tO3UoQA5H/DVPn43iX1bwCGfBEmhfc9NoYqkZfnSCxEIM6flSfn
	Uau7GlCOpANIPLRuQ3aTA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Qi/vAPNWevg=:de5W1HWxe4rUYM5wc5O2BS
	SIonb5nMwbonwiP0fbcz1kbV3JNaC5CWs0+tL9TcH67H7GYHK025yPSdPnvK5jePXXo02/ZPi
	o0RbcUy/rOALCw6vs5/fTmyi58QbBN3k0r7PL4k8nSDToB0NH39iM6HYx1At219P4OpOEkLs+
	3AUUV17L5KkzJvlwBS9Ckgi3ILIPnonXr5UoA5IoEiYd7lMmjeQL3x/onaXp9pCtSTQC42gCb
	QsRrqpL0GP32sTLwNx6t0/snsnQVRRheOwG1Q5A1CaxpIBKBN0NI2UEF1HyMVTT8sqDxXJjXR
	6QLklhGEBTa17eY5v3JhWXolvR+CNhyfAoQ8DnqDPKEH1ApO8HPpapJ4CKVCwk1YE4UmcWaW8
	JCoU5Gab6B7/nCoWLGQPacWfnUujBdqiDtCb4fMeHfk6NPSMFkTtiHXImRja3sKQ8qe+5ztnW
	s/YniQTJPT3Jv0G9Ka/t7fU/AUYT2GDbI2rEN18MlbjBcqsF1LjT/34USO7clWjm5tv35EAdN
	OdRvOxhcH3KUS49eJohsbzlVUVVNQLiTKdruulFJ/A3G3YXIRn6tud+drJkuJCs+ck/JC0rMM
	es/QDKj0g5B6E4AQyln4byUzyyvCtwR6QwenGFGTrFvMdoD6W4hTU+4Ewkstmmhh5NPbpHrEX
	SLHR0pIZzrMU/Fg/graIjnqBnDCBEOe4EUiLf/NdZrIgEkUoVUsc5Rh56eQ+oex/i5OOZpGCP
	5SzWaIszN3py+1fi0INgAE1N5c2Ksh8/nv1JOjoMm+JZFtChc+mqKmpBc7I=
Subject: binutils_cross build aborted
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: dbt@novatux.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 07 May 2016 19:13:09 -0000
X-Groupsio-MsgNum: 29890
Content-Type: multipart/mixed; boundary="------------A73221B9BC68BC66D67C1026"

--------------A73221B9BC68BC66D67C1026
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello!

The build of binutils_cross was aborted with this error:
We are using the current krogoth branch.

Error:
> ccache g++  -W -Wall    -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -frandom-seed=dwp -I../../gold/../zlib -isystem/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uclibc/sysroots/i686-linux/usr/include -O2 -pipe  -L/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uclibc/sysroots/i686-linux/usr/lib -L/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uclibc/sysroots/i686-linux/lib -Wl,-rpath-link,/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uclibc/sysroots/i686-linux/usr/lib -Wl,-rpath-link,/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uclibc/sysroots/i686-linux/lib -Wl,-rpath,/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uclibc/sysroots/i686-linux/usr/lib -Wl,-rpath,/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uclibc/sysroots/i686-linux/lib -Wl,-O1 -o dwp dwp.o libgold.a ../libiberty/libiberty.a    -ldl -L./../zlib -lz -ldl 
> dwp.o: In function `gold::Sized_relobj_dwo<64, false>::setup()':
> dwp.cc:(.text._ZN4gold16Sized_relobj_dwoILi64ELb0EE5setupEv[gold::Sized_relobj_dwo<64, false>::setup()]+0x170): undefined reference to `std::map<unsigned int, gold::Compressed_section_info, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, gold::Compressed_section_info> > >* gold::build_compressed_section_map<64, false>(unsigned char const*, unsigned int, char const*, unsigned int, gold::Object*, bool)'
> dwp.o: In function `gold::Sized_relobj_dwo<32, true>::setup()':
> dwp.cc:(.text._ZN4gold16Sized_relobj_dwoILi32ELb1EE5setupEv[gold::Sized_relobj_dwo<32, true>::setup()]+0x15c): undefined reference to `std::map<unsigned int, gold::Compressed_section_info, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, gold::Compressed_section_info> > >* gold::build_compressed_section_map<32, true>(unsigned char const*, unsigned int, char const*, unsigned int, gold::Object*, bool)'
> dwp.o: In function `gold::Sized_relobj_dwo<32, false>::setup()':
> dwp.cc:(.text._ZN4gold16Sized_relobj_dwoILi32ELb0EE5setupEv[gold::Sized_relobj_dwo<32, false>::setup()]+0x156): undefined reference to `std::map<unsigned int, gold::Compressed_section_info, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, gold::Compressed_section_info> > >* gold::build_compressed_section_map<32, false>(unsigned char const*, unsigned int, char const*, unsigned int, gold::Object*, bool)'
> dwp.o: In function `gold::Sized_relobj_dwo<64, true>::setup()':
> dwp.cc:(.text._ZN4gold16Sized_relobj_dwoILi64ELb1EE5setupEv[gold::Sized_relobj_dwo<64, true>::setup()]+0x174): undefined reference to `std::map<unsigned int, gold::Compressed_section_info, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, gold::Compressed_section_info> > >* gold::build_compressed_section_map<64, true>(unsigned char const*, unsigned int, char const*, unsigned int, gold::Object*, bool)'
> libgold.a(dynobj.o): In function `gold::Sized_dynobj<32, false>::base_read_symbols(gold::Read_symbols_data*)':
> dynobj.cc:(.text._ZN4gold12Sized_dynobjILi32ELb0EE17base_read_symbolsEPNS_17Read_symbols_dataE[gold::Sized_dynobj<32, false>::base_read_symbols(gold::Read_symbols_data*)]+0x101): undefined reference to `std::map<unsigned int, gold::Compressed_section_info, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, gold::Compressed_section_info> > >* gold::build_compressed_section_map<32, false>(unsigned char const*, unsigned int, char const*, unsigned int, gold::Object*, bool)'
> libgold.a(dynobj.o): In function `gold::Sized_dynobj<64, true>::base_read_symbols(gold::Read_symbols_data*)':
> dynobj.cc:(.text._ZN4gold12Sized_dynobjILi64ELb1EE17base_read_symbolsEPNS_17Read_symbols_dataE[gold::Sized_dynobj<64, true>::base_read_symbols(gold::Read_symbols_data*)]+0x101): undefined reference to `std::map<unsigned int, gold::Compressed_section_info, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, gold::Compressed_section_info> > >* gold::build_compressed_section_map<64, true>(unsigned char const*, unsigned int, char const*, unsigned int, gold::Object*, bool)'
> libgold.a(dynobj.o): In function `gold::Sized_dynobj<64, false>::base_read_symbols(gold::Read_symbols_data*)':
> dynobj.cc:(.text._ZN4gold12Sized_dynobjILi64ELb0EE17base_read_symbolsEPNS_17Read_symbols_dataE[gold::Sized_dynobj<64, false>::base_read_symbols(gold::Read_symbols_data*)]+0x101): undefined reference to `std::map<unsigned int, gold::Compressed_section_info, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, gold::Compressed_section_info> > >* gold::build_compressed_section_map<64, false>(unsigned char const*, unsigned int, char const*, unsigned int, gold::Object*, bool)'
> libgold.a(dynobj.o): In function `gold::Sized_dynobj<32, true>::base_read_symbols(gold::Read_symbols_data*)':
> dynobj.cc:(.text._ZN4gold12Sized_dynobjILi32ELb1EE17base_read_symbolsEPNS_17Read_symbols_dataE[gold::Sized_dynobj<32, true>::base_read_symbols(gold::Read_symbols_data*)]+0x101): undefined reference to `std::map<unsigned int, gold::Compressed_section_info, std::less<unsigned int>, std::allocator<std::pair<unsigned int const, gold::Compressed_section_info> > >* gold::build_compressed_section_map<32, true>(unsigned char const*, unsigned int, char const*, unsigned int, gold::Object*, bool)'
> collect2: ld returned 1 exit status
> make[4]: *** [dwp] Error 1
> make[4]: *** Waiting for unfinished jobs....
> make[4]: Leaving directory `/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uclibc/work/i686-linux/binutils-cross-arm/2.26-r0/git/build.i686-linux.arm-oe-linux-uclibceabi/gold'
> make[3]: *** [all-recursive] Error 1
> make[3]: Leaving directory `/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uclibc/work/i686-linux/binutils-cross-arm/2.26-r0/git/build.i686-linux.arm-oe-linux-uclibceabi/gold'
> make[2]: *** [all] Error 2
> make[2]: Leaving directory `/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uclibc/work/i686-linux/binutils-cross-arm/2.26-r0/git/build.i686-linux.arm-oe-linux-uclibceabi/gold'
> make[1]: *** [all-gold] Error 2
> make[1]: Leaving directory `/home/dbt/bs/yocto-poky-cst/build-hd2/tmp-uclibc/work/i686-linux/binutils-cross-arm/2.26-r0/git/build.i686-linux.arm-oe-linux-uclibceabi'
> make: *** [all] Error 2
> ERROR: oe_runmake failed

I've tried to fix this with this workaround, but I'm sure that this
can't be the solution.


From dba3ed789a7013f52359b2d064b88a465f031e6d Mon Sep 17 00:00:00 2001
From: Thilo Graf <dbt@novatux.de>
Date: Sat, 7 May 2016 20:56:38 +0200
Subject: [PATCH] Try to fix broken binutils_cross build

BBuild seems to abort in some local constellations.
Only disable of gold has been helped.
This is only a workaround and should be fixed more effective.

Signed-off-by: Thilo Graf <dbt@novatux.de>
---
 meta/recipes-devtools/binutils/binutils.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-devtools/binutils/binutils.inc
b/meta/recipes-devtools/binutils/binutils.inc
index 43e2aa2..3642c55 100644
--- a/meta/recipes-devtools/binutils/binutils.inc
+++ b/meta/recipes-devtools/binutils/binutils.inc
@@ -78,7 +78,7 @@ EXTRA_OECONF = "--program-prefix=${TARGET_PREFIX} \

 LDGOLD_class-native = ""
 LDGOLD_class-crosssdk = ""
-LDGOLD ?= "${@bb.utils.contains('DISTRO_FEATURES', 'ld-is-gold',
'--enable-gold=default --enable-threads', '--enable-gold
--enable-ld=default', d)}"
+LDGOLD ?= "${@bb.utils.contains('DISTRO_FEATURES', 'ld-is-gold',
'--enable-gold=default --enable-threads', '--disable-gold
--enable-ld=default', d)}"

 # This is necessary due to a bug in the binutils Makefiles
 # EXTRA_OEMAKE = "configure-build-libiberty all"
-- 
2.1.4

--------------A73221B9BC68BC66D67C1026
Content-Type: text/plain; charset=UTF-8;
 name="0001-Try-to-fix-broken-binutils_cross-build.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="0001-Try-to-fix-broken-binutils_cross-build.patch"

RnJvbSBkYmEzZWQ3ODlhNzAxM2Y1MjM1OWIyZDA2NGI4OGE0NjVmMDMxZTZkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBUaGlsbyBHcmFmIDxkYnRAbm92YXR1eC5kZT4KRGF0ZTogU2F0
LCA3IE1heSAyMDE2IDIwOjU2OjM4ICswMjAwClN1YmplY3Q6IFtQQVRDSF0gVHJ5IHRvIGZpeCBi
cm9rZW4gYmludXRpbHNfY3Jvc3MgYnVpbGQKCkJCdWlsZCBzZWVtcyB0byBhYm9ydCBpbiBzb21l
IGxvY2FsIGNvbnN0ZWxsYXRpb25zLgpPbmx5IGRpc2FibGUgb2YgZ29sZCBoYXMgYmVlbiBoZWxw
ZWQuClRoaXMgaXMgb25seSBhIHdvcmthcm91bmQgYW5kIHNob3VsZCBiZSBmaXhlZCBtb3JlIGVm
ZmVjdGl2ZS4KClNpZ25lZC1vZmYtYnk6IFRoaWxvIEdyYWYgPGRidEBub3ZhdHV4LmRlPgotLS0K
IG1ldGEvcmVjaXBlcy1kZXZ0b29scy9iaW51dGlscy9iaW51dGlscy5pbmMgfCAyICstCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9t
ZXRhL3JlY2lwZXMtZGV2dG9vbHMvYmludXRpbHMvYmludXRpbHMuaW5jIGIvbWV0YS9yZWNpcGVz
LWRldnRvb2xzL2JpbnV0aWxzL2JpbnV0aWxzLmluYwppbmRleCA0M2UyYWEyLi4zNjQyYzU1IDEw
MDY0NAotLS0gYS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvYmludXRpbHMvYmludXRpbHMuaW5jCisr
KyBiL21ldGEvcmVjaXBlcy1kZXZ0b29scy9iaW51dGlscy9iaW51dGlscy5pbmMKQEAgLTc4LDcg
Kzc4LDcgQEAgRVhUUkFfT0VDT05GID0gIi0tcHJvZ3JhbS1wcmVmaXg9JHtUQVJHRVRfUFJFRklY
fSBcCiAKIExER09MRF9jbGFzcy1uYXRpdmUgPSAiIgogTERHT0xEX2NsYXNzLWNyb3Nzc2RrID0g
IiIKLUxER09MRCA/PSAiJHtAYmIudXRpbHMuY29udGFpbnMoJ0RJU1RST19GRUFUVVJFUycsICds
ZC1pcy1nb2xkJywgJy0tZW5hYmxlLWdvbGQ9ZGVmYXVsdCAtLWVuYWJsZS10aHJlYWRzJywgJy0t
ZW5hYmxlLWdvbGQgLS1lbmFibGUtbGQ9ZGVmYXVsdCcsIGQpfSIKK0xER09MRCA/PSAiJHtAYmIu
dXRpbHMuY29udGFpbnMoJ0RJU1RST19GRUFUVVJFUycsICdsZC1pcy1nb2xkJywgJy0tZW5hYmxl
LWdvbGQ9ZGVmYXVsdCAtLWVuYWJsZS10aHJlYWRzJywgJy0tZGlzYWJsZS1nb2xkIC0tZW5hYmxl
LWxkPWRlZmF1bHQnLCBkKX0iCiAKICMgVGhpcyBpcyBuZWNlc3NhcnkgZHVlIHRvIGEgYnVnIGlu
IHRoZSBiaW51dGlscyBNYWtlZmlsZXMKICMgRVhUUkFfT0VNQUtFID0gImNvbmZpZ3VyZS1idWls
ZC1saWJpYmVydHkgYWxsIgotLSAKMi4xLjQKCg==

--------------A73221B9BC68BC66D67C1026--
