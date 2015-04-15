Return-Path: <todor.minchev@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04E33E009B8; Wed, 15 Apr 2015 03:57:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5694E0079F
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 03:57:52 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 15 Apr 2015 03:57:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,581,1422950400"; 
	d="p7s'?scan'208";a="709389886"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
	by fmsmga002.fm.intel.com with ESMTP; 15 Apr 2015 03:57:45 -0700
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.2]) by
	IRSMSX109.ger.corp.intel.com ([169.254.13.95]) with mapi id
	14.03.0224.002; Wed, 15 Apr 2015 11:57:44 +0100
From: "Minchev, Todor" <todor.minchev@intel.com>
To: "abhinavbipnesh@avaya.com" <abhinavbipnesh@avaya.com>
Thread-Topic: [yocto] Yocto Eclipse Plugin
Thread-Index: AdB2F3HM/xMNdG1HR7StQtYHFqtt4QAYfToAAAI5/gAAB50yAAAxCWVQ///7aYA=
Date: Wed, 15 Apr 2015 10:57:43 +0000
Message-ID: <1429095463.26943.7.camel@intel.com>
References: <F38A866CD026F746A3BF0928A84397BE3A39BD12@AZ-FFEXMB01.global.avaya.com>
	<1428995298.8544.32.camel@intel.com>
	<F38A866CD026F746A3BF0928A84397BE3A39E1EA@AZ-FFEXMB01.global.avaya.com>
	<1429012204.8544.44.camel@intel.com>
	<F38A866CD026F746A3BF0928A84397BE3A39E777@AZ-FFEXMB01.global.avaya.com>
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3A39E777@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.28.33.100]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Eclipse Plugin
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
X-List-Received-Date: Wed, 15 Apr 2015 10:57:54 -0000
X-Groupsio-MsgNum: 24461
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature";
	boundary="=-/hyUiTQQ/KZn+2PC2KQk"

--=-/hyUiTQQ/KZn+2PC2KQk
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Abhinav,

On Wed, 2015-04-15 at 10:15 +0000, Bipnesh, Abhinav (Abhinav) wrote:
> Hi Todor,
>=20
> I tried with below link and still observe the same issue. It didn=E2=80=
=99t identify the bitbake directory environment files and report same error=
s.

In your previous email you mentioned that the cross compiler variables
are populated for the hello world example. If that's the case the IDE
must have parsed the environment setup file.

Please open a bug here so we can track this issue and I will investigate
the problem.=20
=20
https://bugzilla.yoctoproject.org/enter_bug.cgi?product=3DEclipse%20Plugin

Thanks,
Todor

>=20
> Thanks,
> Abhinav
>=20
> -----Original Message-----
> From: Minchev, Todor [mailto:todor.minchev@intel.com]=20
> Sent: Tuesday, April 14, 2015 17:20
> To: Bipnesh, Abhinav (Abhinav)
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Yocto Eclipse Plugin
>=20
> Hello Abinhav,
>=20
> This is most likely caused by a mismatch between the plugin build (juno)
> and the IDE (luna). Please install the luna build of the plugin from
> here:
>=20
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yoctop=
roject.org_pub_nightly_CURRENT_eclipse-2Dplugin_luna_org.yocto.sdk-2Ddevelo=
pment-2D201504140001-2Darchive.zip&d=3DAwIFaQ&c=3DBFpWQw8bsuKpl1SgiZH64Q&r=
=3DgeJ1wB7xRIMmteYB2Fo8esL32BOWvwP1HmY0YuLEB4E&m=3Dxo2lJGQ9ANMp6iXK5QeTFxfG=
aBn9HAZBpwjlrurzJSg&s=3D6lW-2yvLIg91mRJrVqXU608Eon92Q0K2p5jUJSptFFI&e=3D=
=20
>=20
> Thanks,
> Todor
>=20
> On Tue, 2015-04-14 at 08:39 +0000, Bipnesh, Abhinav (Abhinav) wrote:
> > Hi,
> >=20
> > =20
> >=20
> > I was using the same URL as you suggested for the Yocto Eclipse
> > Plugin. Below is the snapshot of the error I am getting when I try to
> > configure it as Build System derived tool chain
> >=20
> > =20
>=20
> >=20
> >=20
> >=20
> > =20
> >=20
> > =20
> >=20
> > I already did build meta-ide-support and can see the
> > environment-setup-ppce5500-fsl-linux under <build directory>/tmp. If I
> > select Standalone SDK the it starts work without any issue.
> >=20
> > =20
> >=20
> > =20
> >=20
> > Second issue I am facing is that when I import my existing project
> > which is a Makefile base I can see option for Yocto CMake Build
> > (Toolchain) as below
> >=20
> > =20
> >=20
> >=20
> >=20
> > =20
> >=20
> > So how to fix this as need to make it working with existing Makefile
> > based project.
> >=20
> > =20
> >=20
> > =20
> >=20
> > Any thoughts how to fix these issues.
> >=20
> > =20
> >=20
> > Thanks,
> >=20
> > Abhinav
> >=20
> > =20
> >=20
> > -----Original Message-----
> > From: Minchev, Todor [mailto:todor.minchev@intel.com]=20
> > Sent: Tuesday, April 14, 2015 12:38
> > To: Bipnesh, Abhinav (Abhinav)
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] Yocto Eclipse Plugin
> >=20
> > =20
> >=20
> > Hello Abhinav,
> >=20
> > =20
> >=20
> > On Mon, 2015-04-13 at 18:27 +0000, Bipnesh, Abhinav (Abhinav) wrote:
> >=20
> > > Hi All,
> >=20
> > >=20
> >=20
> > > I am trying to setup the Yocto Eclipse Plugin for Eclipse (Luna
> > release). I am able to install the Juno release plugin for 1.7.1
> > release. But while configuring it I am facing issues as below
> >=20
> > =20
> >=20
> > > 1. When I try to provide BitBake directory as part of tool chain I
> > get an error that need to build meta-ide-support before configuring
> > it.=20
> >=20
> > > As I did build meta-ide-support before setting up the path as I can
> > see an environment file present under <bitbake machine directory>/tmp
> > path.
> >=20
> > =20
> >=20
> > You will need to provide the path to the build directory. This is the
> >=20
> > directory holding tmp.
> >=20
> > =20
> >=20
> > > 2. If I select Standard SDK option then it accepts the same i.e. it
> > accept environment file present under tmp directory as vaild which I
> > suppose it should not do.
> >=20
> > > 3. I already has Makefile based project which I am trying to
> > configure in eclipse by selecting Yocto as Toolchain.=20
> >=20
> > > But when I try to build it I am seeing its using platform GCC
> > instead of Yocto tool chain.
> >=20
> > =20
> >=20
> > Selecting the correct directory should set up the cross-compiler
> >=20
> > environment and fix this.
> >=20
> > > =20
> >=20
> > > How to fix the same as I cant change this project to an CMake based
> > project.
> >=20
> > >=20
> >=20
> > > Is there as way I can use Kepler plugin instead of Juno as when I
> > try the same with Luna I am getting dependencies errors.
> >=20
> > =20
> >=20
> > You can find the plugin releases here:
> >=20
> > https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__downloads.yoctopr=
oject.org_releases_eclipse-2Dplugin_&d=3DAwIFaQ&c=3DBFpWQw8bsuKpl1SgiZH64Q&=
r=3DgeJ1wB7xRIMmteYB2Fo8esL32BOWvwP1HmY0YuLEB4E&m=3DHg_RatI-pPFNhlwlj3rvSiP=
3RspGPYNzHRBg-XaXN1U&s=3D11DZqLCED8UtaM9vU0YxGMeaNWGlerPzTawEoVwuJd4&e=3D=
=20
> >=20
> > =20
> >=20
> > Cheers,
> >=20
> > Todor
> >=20
> > =20
> >=20
> >=20
>=20


--=-/hyUiTQQ/KZn+2PC2KQk
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
KoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xNTA0MTUxMDU3NDNaMCMGCSqGSIb3DQEJBDEWBBSs
QBPyIKBhhLavNv+YHm2AfBBh/TCBmAYJKwYBBAGCNxAEMYGKMIGHMHkxCzAJBgNVBAYTAlVTMQsw
CQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENvcnBvcmF0
aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDRBAgoRaRDYAAAA
AEhlMIGaBgsqhkiG9w0BCRACCzGBiqCBhzB5MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDAS
BgNVBAcTC1NhbnRhIENsYXJhMRowGAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMi
SW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSA0QQIKEWkQ2AAAAABIZTANBgkqhkiG9w0B
AQEFAASCAQB9v27GpqsHWDubkFkPLk5rapoi3PC6RdOM5fqxeg+x33RI2+chkfGi7Xnwy09vyWow
cW3eYd7KZtMnQhBFPKyTO0c6QhzcC0/8dhG9zUDhOp5SqSf7OKVa2X/YZBEVdKJdHnV7J7achPgt
qXoL4/Rpr2htg9GrEXsnyXJg8ohVo/ui2KMUm83WUIdAGxlDBbsAq5qO3ILTHvlzWwFYUbvnlBDE
XCMWMhadnWwEVFYTrEV90qa0k869CEWeHqvXT91MiNYmLyT7XxcBO7h4YeWvNvD9TyEJr0b5eaxh
LFFOtRsU1AAzlQVjHj84hFBDPV3J+5TJbF0Q0lFSvsSbnfcKAAAAAAAA

--=-/hyUiTQQ/KZn+2PC2KQk--
