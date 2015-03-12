Return-Path: <todor.minchev@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA457E0086D; Thu, 12 Mar 2015 10:50:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	UC_GIBBERISH_OBFU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.0 UC_GIBBERISH_OBFU Multiple instances of "word VERYLONGGIBBERISH
	*      word"
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7053DE00858
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 10:50:33 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 12 Mar 2015 10:50:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,390,1422950400"; 
	d="p7s'?scan'208";a="540066972"
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
	by orsmga003.jf.intel.com with ESMTP; 12 Mar 2015 10:49:48 -0700
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.117]) by
	IRSMSX154.ger.corp.intel.com ([169.254.12.237]) with mapi id
	14.03.0195.001; Thu, 12 Mar 2015 17:50:30 +0000
From: "Minchev, Todor" <todor.minchev@intel.com>
To: "bevenson@melinkcorp.com" <bevenson@melinkcorp.com>
Thread-Topic: [yocto] eclipse-poky: Can't build from Eclipse, but command
	line build works
Thread-Index: AQHQXLa6YS1OS/VB90WAiVceDlln950Y24wAgABFFIA=
Date: Thu, 12 Mar 2015 17:50:29 +0000
Message-ID: <1426182629.7680.39.camel@intel.com>
References: <BN3PR0501MB109035A8492F6EA261F15FE8BB190@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<1426159307.7680.18.camel@intel.com>
	<BN3PR0501MB1090163B91C05C2E2CCFDB9CBB060@BN3PR0501MB1090.namprd05.prod.outlook.com>
In-Reply-To: <BN3PR0501MB1090163B91C05C2E2CCFDB9CBB060@BN3PR0501MB1090.namprd05.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.28.33.100]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: eclipse-poky: Can't build from Eclipse, but command line build works
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
X-List-Received-Date: Thu, 12 Mar 2015 17:50:35 -0000
X-Groupsio-MsgNum: 23998
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature";
	boundary="=-BGaxWjAFQaBal9Nm0qdB"

--=-BGaxWjAFQaBal9Nm0qdB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2015-03-12 at 13:43 +0000, Bryan Evenson wrote:
> Todor,
> =20
> > It appears that your toolchain is configured properly, however the
> GNU linker (ld) cannot find the libraries it needs to link the
> binary.=20
> > I suspect that the culprit is "--sysroot=3D$SDKTARGETSYSROOT"
> > There should be an environment setup file
> >=20
> > /<home_path>/poky/poky-build/tmp/environment-setup-XX
> >
> > If you open it you will see SDKTARGETSYSROOT environment variable.
> It most likely points to a different sysroot path.
> > Please change it to point to the directory where you extracted your
> sysroot (/<home_path>/extracted_sysroot_1.6.2),
> > create a new project and see if that builds OK.
> =20
> I've been having a few other issues with Eclipse (Install New Software
> menu item disappearing, other plugins disappearing after restarting,
> etc.), so I uninstalled eclipse, deleted my ~/.eclipse and workspace
> directories and re-installed Eclipse.  I need to run Eclipse Kepler
> (another plugin I'm using isn't ready for Eclipse Luna), so I followed
> these instructions for installing Eclipse by hand:
> http://www.92wiki.com/en/blog/detail/install-eclipse-kepler-on-fedora-17-=
18-19-centos-red-hat-rhel-5-6.   I also edited my environment setup script =
as suggested.  I then reinstalled all necessary plugins as described in the=
 ADT manual.  I pointed the toolchain to my build directory and the sysroot=
 location to my extracted sysroot.  I then followed the steps in the ADT ma=
nual to create a new Hello World Yocto ADT project.  I verified the SDKTARG=
ETSYSROOT environment variable in the new project points to my extracted sy=
sroot.  When I attempted to build, I get the following output:
> =20
> =20
> Invoking autogen.sh in build
> directory: /<home_path>/workspace/adt_test/
> =20
> Command-line environment variables:
>         CFLAGS=3D" -g -O0
> --sysroot=3D/<home_path>/extracted_sysroot_1.6.2" CXXFLAGS=3D" -g -O0
> --sysroot=3D/<home_path>/extracted_sysroot_1.6.2" LDFLAGS=3D"
> --sysroot=3D/<home_path>/extracted_sysroot_1.6.2" CPPFLAGS=3D"
> --sysroot=3D/<home_path>/extracted_sysroot_1.6.2"
> =20
> sh -c "/<home_path>/workspace/adt_test/autogen.sh
> --with-libtool-sysroot=3D/<home_path>/extracted_sysroot_1.6.2
> --target=3Darm-poky-linux-gnueabi --host=3Darm-poky-linux-gnueabi
> --build=3Dx86_64-linux
> --with-libtool-sysroot=3D/<home_path>/extracted_sysroot_1.6.2"
> aclocal: warning: couldn't open directory
> '/<home_path>/extracted_sysroot_1.6.2/usr/share/aclocal': No such file
> or directory
> configure.ac:16: warning: AM_INIT_AUTOMAKE: two- and three-arguments
> forms are deprecated.  For more info, see:
> configure.ac:16:
> http://www.gnu.org/software/automake/manual/automake.html#Modernize-AM_00=
5fINIT_005fAUTOMAKE-invocation
> configure.ac:20: installing './compile'
> configure.ac:20: installing './config.guess'
> configure.ac:20: installing './config.sub'
> configure.ac:16: installing './install-sh'
> configure.ac:16: installing './missing'
> src/Makefile.am: installing './depcomp'
> configure: loading site
> script /<home_path>/poky/meta/site/endian-little
> configure: loading site script /<home_path>/poky/meta/site/arm-common
> configure: loading site
> script /<home_path>/poky/meta/site/common-linux
> configure: loading site
> script /<home_path>/poky/meta/site/common-glibc
> configure: loading site script /<home_path>/poky/meta/site/arm-linux
> configure: loading site script /<home_path>/poky/meta/site/common
> configure: loading site
> script /<home_path>/poky/meta-openembedded/meta-oe/site/endian-little
> configure: loading site
> script /<home_path>/poky/poky-build/tmp/sysroots/at91sam9x5ek/usr/share/a=
rm-poky-linux-gnueabi_config_site.d/ncurses_config
> configure: loading site
> script /<home_path>/poky/poky-build/tmp/sysroots/at91sam9x5ek/usr/share/a=
rm-poky-linux-gnueabi_config_site.d/eglibc_config
> checking for a BSD-compatible install... /usr/bin/install -c
> checking whether build environment is sane... yes
> checking for arm-poky-linux-gnueabi-strip...
> arm-poky-linux-gnueabi-strip
> checking for a thread-safe mkdir -p... /usr/bin/mkdir -p
> checking for gawk... gawk
> checking whether make sets $(MAKE)... yes
> checking whether make supports nested variables... yes
> checking build system type... x86_64-pc-linux-gnu
> checking host system type... arm-poky-linux-gnueabi
> checking how to print strings... printf
> checking for style of include used by make... GNU
> checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc
> -march=3Darmv5te -marm -mthumb-interwork -mtune=3Darm926ej-s --sysroot=3D
> $SDKTARGETSYSROOT
> checking whether the C compiler works... no
> configure: error: in `/<home_path>/workspace/adt_test':
> configure: error: in `/<home_path>/workspace/adt_test':
> configure: error: C compiler cannot create executables
> configure: error: C compiler cannot create executables
> See `config.log' for more details

This is a different error. There seems to be a mismatch between your
toolchain and rootfs. Could you please share the full name of=20

my_built_image.tar.gz from

runqemu-extract-sdk <my_built_image.tar.gz>
<sysroot_destination_directory>"

> =20
> Configuration failed with error
> =20
> The bold lines are ones that I see as a potential problem.  First, the
> system couldn't find aclocal in my extracted sysroot.  I took a look
> in the directory listed, and aclocal is not in there.  I think the
> configure script also found the build system's install and mkdir
> (/usr/bin/install and /usr/bin/mkdir).  I don't know if there is
> supposed to be one of these in the extracted sysroot or not, but I
> thought it was worth noting.
> =20
> On a possibly related topic, I noticed that the Eclipse Indexer is
> using the build system's header files.  For example, if I open the
> main source file from the Hellow World application, place my cursor on
> the line "#include <stdlib.h>" and hit F3, /usr/include/stdlib.h opens
> up instead of stdlib.h from my toolchain.  Under the Eclipse project,
> for the listed Includes directories it has the following:
> =20
> /usr/include
> /usr/lib/gcc/x86_64-redhat-linux/4.9.2/include
> /usr/local/include

Eclipse is showing the host headers, but it will use the headers from
your sysroot during the actual build.

> =20
> Any thoughts on how to fix these issues?
> =20
> Thanks,
> Bryan
> =20


--=-BGaxWjAFQaBal9Nm0qdB
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

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
qcETmP5WmZOyycq5cD8qO4qY4N1Va0KlO0MPnPlqCH1idu0Byo6e4f/CsWg2EvGDOT8vAgMBAAGj
ggIxMIICLTALBgNVHQ8EBAMCB4AwPAYJKwYBBAGCNxUHBC8wLQYlKwYBBAGCNxUIhsOMdYSZ5VGD
/YEohY6fU4KRwAlngd69OZXwQwIBZAIBCDAdBgNVHQ4EFgQUeijLELxE2SDhZHWre1zfj9+8kOMw
HwYDVR0jBBgwFoAUHmkqtNwo/kcYTiELP7ysES/wmPUwZQYDVR0fBF4wXDBaoFigVoZUaHR0cDov
L3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIw
SXNzdWluZyUyMENBJTIwNEEuY3JsMIGfBggrBgEFBQcBAQSBkjCBjzBpBggrBgEFBQcwAoZdaHR0
cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5h
bCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwNEEuY3J0MCIGCCsGAQUFBzABhhZodHRwOi8vb2Nz
cC5pbnRlbC5jb20vMB8GA1UdJQQYMBYGCCsGAQUFBwMEBgorBgEEAYI3CgMMMCkGCSsGAQQBgjcV
CgQcMBowCgYIKwYBBQUHAwQwDAYKKwYBBAGCNwoDDDBLBgNVHREERDBCoCcGCisGAQQBgjcUAgOg
GQwXdG9kb3IubWluY2hldkBpbnRlbC5jb22BF3RvZG9yLm1pbmNoZXZAaW50ZWwuY29tMA0GCSqG
SIb3DQEBBQUAA4IBAQDVcbxsEX7Mupn3YJ5CF7JdeXczsAZ0zQefcq6IaNgda9aolT/4nSmGJI6l
uJYF3VpEz++O1P/UfDINsjLBdN9FWURSHOlPggJyrqQ0kHRlULPtjuQVKlew1yGoYGKb2OTYb5hK
m1ec2oXiWa/FFI1bynTDgWlrO88L58qK1QkIZzL8RwB/JpiJGUyukkPuT1e54ZG2PH78gKSz06Lt
xRw3w6wRjaP8iwE8AVXry7QylN3dE8PyOgmjlmFUnDn1lRwo9ESaB/QAI5BxSYid/uk6unnm75sq
P6bTec9bgl4dqJu+rRFJJj4fC4ffnp5GtqG9WTsyEoUfp5Y23pBGc/QaMIIGbTCCBVWgAwIBAgIK
EWkQ2AAAAABIZTANBgkqhkiG9w0BAQUFADB5MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDAS
BgNVBAcTC1NhbnRhIENsYXJhMRowGAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMi
SW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSA0QTAeFw0xNDAzMDExOTQ0MTNaFw0xNzAy
MTMxOTQ0MTNaMEExFzAVBgNVBAMTDk1pbmNoZXYsIFRvZG9yMSYwJAYJKoZIhvcNAQkBFhd0b2Rv
ci5taW5jaGV2QGludGVsLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJHqnL6c
snAM1wfTEDLYYi0hJKf8G7iWdFVXh0DGNaj6VozcDBlPZShviB6WDQjBxCeVU+zgnA8CMBQKXJ7o
x3KHUiVcY7aYDl41Yl9RBvKzN61SfmFSA+mhKxC9BOuQvyTaWZoxVlm332MTa59gFon4jKVJfP7t
OCK3uPETR/7ycuAjDHMmZmJzKOmhMrNyq7w75EsdLZJhUsGSmtMDv2wLDPkQk7qkkbEM+24qma5T
1iIuV1+UUrip4+IWWehvKX1JEIT5bHG9Evnep9Uf/2Whg4l6neqsCuev8k+9r+uYYHMGoUBuTqM3
Xh3uAu6vVOxtYNwuyzVO9C+lfVLXONUCAwEAAaOCAy0wggMpMAsGA1UdDwQEAwIEMDA9BgkrBgEE
AYI3FQcEMDAuBiYrBgEEAYI3FQiGw4x1hJnlUYP9gSiFjp9TgpHACWeEudlBh4T/TgIBZAIBDTBE
BgkqhkiG9w0BCQ8ENzA1MA4GCCqGSIb3DQMCAgIAgDAOBggqhkiG9w0DBAICAIAwBwYFKw4DAgcw
CgYIKoZIhvcNAwcwHQYDVR0OBBYEFPK/Tetim9eBCuLKW5j5Z0aNlUK+MB8GA1UdIwQYMBaAFB5p
KrTcKP5HGE4hCz+8rBEv8Jj1MIHJBgNVHR8EgcEwgb4wgbuggbiggbWGVGh0dHA6Ly93d3cuaW50
ZWwuY29tL3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMElzc3Vpbmcl
MjBDQSUyMDRBLmNybIZdaHR0cDovL2NlcnRpZmljYXRlcy5pbnRlbC5jb20vcmVwb3NpdG9yeS9D
UkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwNEEuY3JsMIHvBggr
BgEFBQcBAQSB4jCB3zBpBggrBgEFBQcwAoZdaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9y
eS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIw
NEEuY3J0MHIGCCsGAQUFBzAChmZodHRwOi8vY2VydGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0
b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0El
MjA0QS5jcnQwHwYDVR0lBBgwFgYIKwYBBQUHAwQGCisGAQQBgjcKAwQwKQYJKwYBBAGCNxUKBBww
GjAKBggrBgEFBQcDBDAMBgorBgEEAYI3CgMEMEsGA1UdEQREMEKgJwYKKwYBBAGCNxQCA6AZDBd0
b2Rvci5taW5jaGV2QGludGVsLmNvbYEXdG9kb3IubWluY2hldkBpbnRlbC5jb20wDQYJKoZIhvcN
AQEFBQADggEBAF0E0nNaQoDxgeNMLFImgnNUUryBCNdCuTpbg5jrla+Crqx82t64r5TXrlUtrBDY
7bfb/ObgQnFlVhoRDYZ8hFo8S5LNihxHKPt7wEq2uN0rusTVzSRtS8Vf6MT7sO44nEKVuvmYAqeL
TfwAUzHwjTWU8szdaTONfjEaIzC8qh5k4/lc/qCqxJD6aDIZyQYCKufppCtyyttBzVAgZ9LdG4Z9
0p4PJSr7IxximJkGlGk/2GmOSkuYr4GCYfQAVmZLkQDBuF/qunedYnTXlnIKql7mc1CpPnS6YV4B
AfFi5vLJk8TKntgrSsu8a97CBqYP4zL9qlIwM/sSzlcb93CrzoUxggNRMIIDTQIBATCBkDB5MQsw
CQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDASBgNVBAcTC1NhbnRhIENsYXJhMRowGAYDVQQKExFJ
bnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBD
QSA0QQITMwAAX2bO5Za1QeBu9QAAAABfZjAJBgUrDgMCGgUAoIIBlTAYBgkqhkiG9w0BCQMxCwYJ
KoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xNTAzMTIxNzUwMjlaMCMGCSqGSIb3DQEJBDEWBBT1
tFnZUQOMpEzxLSWEgbIqSKUGmjCBmAYJKwYBBAGCNxAEMYGKMIGHMHkxCzAJBgNVBAYTAlVTMQsw
CQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENvcnBvcmF0
aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDRBAgoRaRDYAAAA
AEhlMIGaBgsqhkiG9w0BCRACCzGBiqCBhzB5MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDAS
BgNVBAcTC1NhbnRhIENsYXJhMRowGAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMi
SW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSA0QQIKEWkQ2AAAAABIZTANBgkqhkiG9w0B
AQEFAASCAQBLteC43VXs7JXuBmCM58XT3FVsNiFBXoLmO0i8nXOYNrB07+O5ZS8btnRIVeCsSM87
YheLm/8sbzwegMxjfJFzQEMnCZYnMNJvgA5QwTKTn/gnAUrceZ2wGybe098D5NohnNCTgLXP1No2
iaN0lF2PTulM6n5oM2ViomXKmyXn2Jn4K39YVdB4i39za1zwCA7PyXrgP3172Un7bdvf4a0GwQwU
538NKivS5bwV4y/NHEsO0PqBqX8WgiFGoSTQ1yRozJx+CwQn++VIUbhMITM7rSyRtMgxYaemvf6f
3KmSIsqkinx7nB+y8/nE6UaEFWH8ZlyDN7COqHF9lbgaNUYlAAAAAAAA

--=-BGaxWjAFQaBal9Nm0qdB--
