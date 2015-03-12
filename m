Return-Path: <todor.minchev@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72300E0085D; Thu, 12 Mar 2015 04:21:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	UC_GIBBERISH_OBFU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.0 UC_GIBBERISH_OBFU Multiple instances of "word VERYLONGGIBBERISH
	*      word"
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBED8E0034E
	for <yocto@yoctoproject.org>; Thu, 12 Mar 2015 04:21:51 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 12 Mar 2015 04:20:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,388,1422950400"; 
	d="p7s'?scan'208";a="679066109"
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
	by fmsmga001.fm.intel.com with ESMTP; 12 Mar 2015 04:21:50 -0700
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
	IRSMSX154.ger.corp.intel.com (163.33.192.96) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Thu, 12 Mar 2015 11:21:49 +0000
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.117]) by
	irsmsx155.ger.corp.intel.com ([169.254.14.159]) with mapi id
	14.03.0195.001; Thu, 12 Mar 2015 11:21:48 +0000
From: "Minchev, Todor" <todor.minchev@intel.com>
To: "bevenson@melinkcorp.com" <bevenson@melinkcorp.com>
Thread-Topic: [yocto] eclipse-poky: Can't build from Eclipse, but command
	line build works
Thread-Index: AQHQXLa6NowmHWbw7kWIvRyB6FtMjw==
Date: Thu, 12 Mar 2015 11:21:47 +0000
Message-ID: <1426159307.7680.18.camel@intel.com>
References: <BN3PR0501MB109035A8492F6EA261F15FE8BB190@BN3PR0501MB1090.namprd05.prod.outlook.com>
In-Reply-To: <BN3PR0501MB109035A8492F6EA261F15FE8BB190@BN3PR0501MB1090.namprd05.prod.outlook.com>
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
X-List-Received-Date: Thu, 12 Mar 2015 11:21:54 -0000
X-Groupsio-MsgNum: 23985
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature";
	boundary="=-PcpTzVhn+X8rm2uTjKeN"

--=-PcpTzVhn+X8rm2uTjKeN
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Bryan,

On Wed, 2015-03-11 at 13:45 +0000, Bryan Evenson wrote:
> I am trying to get the Yocto Eclipse plug-in setup so that I can build my=
 application from Eclipse.  I am *almost* there, but the final build is not=
 working.  I'm assuming there are some path/rights issues somewhere in the =
chain because I can build from the command line.  I'm looking for some help=
 in figuring out where the difference is.
>=20
> I am using Fedora 21 64-bit for a host system.  I am using Eclipse Kepler=
; I also have Eclipse Luna installed, but I had to install Eclipse Kepler s=
ince another plugin I am using does not yet have support for Eclipse Luna. =
 I am on poky/daisy HEAD and have been able successfully build my image (im=
age based on core-image-minimal with a few extra applications).  Under Ecli=
pse Kepler, I installed the pre-build plug-in from the Yocto Eclipse Update=
 Site as instructed in the Yocto Project Development Manual for Poky 1.6.2.=
  I am using my existing toolchain in the build directory, so I issued "bit=
bake meta-ide-support" to generate the cross-toolchain support.  I then fol=
lowed the instructions under "Extracting the Root Filesystem" in the ADT Ma=
nual to extract the root filesystem.  Specifically, I sourced the newly cre=
ated environment script and then called "runqemu-extract-sdk <my_built_imag=
e.tar.gz> <sysroot_destination_directory>".  Then, from Eclipse I setup the=
 Yocto Project AD
>  T for a "Build System Derived Toolchain", I set the Toolchain Root Direc=
tory to my Poky build directory, and I set the Sysroot location to my extra=
cted sysroot directory.
>=20
> After the initial environment setup, from Eclipse I selected File->New->C=
 Project, and selected a "Hello World ANSI C Autotools Project" under the "=
Yocto Project ADT Autotools Project" options.  For the new project, if I se=
lect "Reconfigure Project" the configuration fails with the following error=
:
>=20
> 	checking whether the C compiler works... no
>=20
> From checking config.log, here are the details on the build failure:
>=20
> 	configure:3289: checking whether the C compiler works
> 	configure:3311: arm-poky-linux-gnueabi-gcc  -march=3Darmv5te -marm -mthu=
mb-interwork -mtune=3Darm926ej-s --sysroot=3D$SDKTARGETSYSROOT  -g -O0  --s=
ysroot=3D/<home_path>/extracted_sysroot_1.6.2  --sysroot=3D/<home_path>/ext=
racted_sysroot_1.6.2  --sysroot=3D/<home_path>/extracted_sysroot_1.6.2 conf=
test.c  >&5

It appears that your toolchain is configured properly, however the  GNU
linker (ld) cannot find the libraries it needs to link the binary.=20

I suspect that the culprit is "--sysroot=3D$SDKTARGETSYSROOT"

There should be an environment setup file

/<home_path>/poky/poky-build/tmp/environment-setup-XX


If you open it you will see SDKTARGETSYSROOT environment variable. It
most likely points to a different sysroot path. Please change it to
point to the directory where you extracted your sysroot
(/<home_path>/extracted_sysroot_1.6.2), create a new project and see if
that builds OK.


> 	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm92=
6ejste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find =
crt1.o: No such file or directory
> 	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm92=
6ejste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find =
crti.o: No such file or directory
> 	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm92=
6ejste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find =
crtbegin.o: No such file or directory
> 	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm92=
6ejste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find =
-lgcc
> 	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm92=
6ejste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find =
-lgcc_s
> 	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm92=
6ejste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find =
-lc
> 	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm92=
6ejste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find =
-lgcc
> 	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm92=
6ejste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find =
-lgcc_s
> 	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm92=
6ejste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find =
crtend.o: No such file or directory
> 	/<home_path>/poky/poky-build/tmp/sysroots/x86_64-linux/usr/libexec/arm92=
6ejste-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot find =
crtn.o: No such file or directory
> 	collect2: error: ld returned 1 exit status
> 	configure:3315: $? =3D 1
> 	configure:3353: result: no
> 	configure: failed program was:
> 	| /* confdefs.h */
> 	| #define PACKAGE_NAME "adt_test_app"
> 	| #define PACKAGE_TARNAME "adt_test_app"
> 	| #define PACKAGE_VERSION "0.1.0"
> 	| #define PACKAGE_STRING "adt_test_app 0.1.0"
> 	| #define PACKAGE_BUGREPORT ""
> 	| #define PACKAGE_URL ""
> 	| #define PACKAGE "adt_test_app"
> 	| #define VERSION "0.1.0"
> 	| /* end confdefs.h.  */
> 	|=20
> 	| int
> 	| main ()
> 	| {
> 	|=20
> 	|   ;
> 	|   return 0;
> 	| }
> 	configure:3358: error: in `/<home_path>/workspace_kepler/adt_test_app':
> 	configure:3360: error: C compiler cannot create executables
>=20
> Note that <home_path> included the actual path to my home directory in co=
nfig.log but I changed it to <home_path> for the purposes of this e-mail (y=
es, I'm paranoid).
>=20
> However, if I instead open a terminal, go to my project directory and do =
the following:
>=20
> 	source <path_to_Poky_build_directory>/environment-setup-arm926ejste-poky=
-linux-gnueabi
> 	./configure ${CONFIGURE_FLAGS}

> The project configures without a problem.  I can then either build from t=
he command line or I can build from Eclipse.  It seems very odd to me that =
the configure doesn't work from Eclipse, but once it is configured I can bu=
ild without issue.  Anyone have any ideas as to what I have wrong in my set=
up?
>=20

This builds, but it most likely uses the rootfs bundled in the
poky-build directory as pointed to by SDKTARGETSYSROOT and not the
rootfs which your extracted.

Thanks,
Todor

> Thanks,
> Bryan


--=-PcpTzVhn+X8rm2uTjKeN
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
KoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xNTAzMTIxMTIxNDdaMCMGCSqGSIb3DQEJBDEWBBS/
ZEiWb3qaA9NPg8qZzRDTZ6ndsDCBmAYJKwYBBAGCNxAEMYGKMIGHMHkxCzAJBgNVBAYTAlVTMQsw
CQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENvcnBvcmF0
aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDRBAgoRaRDYAAAA
AEhlMIGaBgsqhkiG9w0BCRACCzGBiqCBhzB5MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDAS
BgNVBAcTC1NhbnRhIENsYXJhMRowGAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMi
SW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSA0QQIKEWkQ2AAAAABIZTANBgkqhkiG9w0B
AQEFAASCAQCf2FA8Rc5Ee+cxLsvTa+TZpvAN4P04+WVxzMCxO/w9Dejua5JpLrE0VQk83lYQuAIA
vGRZnUOysKjQks7+DcnMJqAH05C7Hl0csXao/uD7ysb53eE3WUvufjJvam9szfTV1ARxcYeWDif7
cOamA8Nr/FsPZrFoeH6dsxEEWJNy5JVZrmgfx28gM3HmK3zYgoJmWJtL9V8UxoXVeVgSsEpS63gx
WwuMb/eA319YOOYEuR4HHDp+G8geh1p1e/F+CYRUmM/f3ty6J+m/PGKFvUN2rTxAYLYnR72HGpo8
9Pt8xiwWO1GQSzDLmZXif1GADp4kw4cv2ZigVhK2XLoOidBSAAAAAAAA

--=-PcpTzVhn+X8rm2uTjKeN--
