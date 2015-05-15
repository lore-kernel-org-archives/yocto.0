Return-Path: <todor.minchev@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE41DE009E2; Fri, 15 May 2015 04:11:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37658E00985
	for <yocto@yoctoproject.org>; Fri, 15 May 2015 04:11:54 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 May 2015 04:11:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,433,1427785200"; 
	d="p7s'?scan'208";a="710651205"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga001.fm.intel.com with ESMTP; 15 May 2015 04:11:53 -0700
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.224.2; Fri, 15 May 2015 12:11:52 +0100
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.73]) by
	irsmsx155.ger.corp.intel.com ([169.254.14.38]) with mapi id
	14.03.0224.002; Fri, 15 May 2015 12:11:51 +0100
From: "Minchev, Todor" <todor.minchev@intel.com>
To: "Raghavendra.Kakarla@inedasystems.com"
	<Raghavendra.Kakarla@inedasystems.com>
Thread-Topic: [yocto] Issue with yocto ADT
Thread-Index: AQHQjvGS80lL5pX7tEePuV/Y1Ag/NZ18xwuAgAATywj///ZkAA==
Date: Fri, 15 May 2015 11:11:51 +0000
Message-ID: <1431688310.6150.4.camel@intel.com>
References: <1431682376634.76952@inedasystems.com> ,
	<1431686123.6150.2.camel@intel.com>
	<1431686858269.81704@inedasystems.com>
In-Reply-To: <1431686858269.81704@inedasystems.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.252.1.20]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issue with yocto ADT
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
X-List-Received-Date: Fri, 15 May 2015 11:11:56 -0000
X-Groupsio-MsgNum: 24844
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature";
	boundary="=-s1hykcOh/Wm+VN3xEaOn"

--=-s1hykcOh/Wm+VN3xEaOn
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Raghavendra,

Could you please pastebin the makefile from your project?

http://pastebin.com/

Cheers,
Todor

On Fri, 2015-05-15 at 10:47 +0000, Raghavendra Kakarla wrote:
> Hi Todor,
>=20
> Thank you for your  reply.
>=20
> By default we have the setting like this only.
>=20
> But we got the error.
>=20
> Thanks,
> Raghavendra.
> ________________________________________
> From: Minchev, Todor <todor.minchev@intel.com>
> Sent: Friday, May 15, 2015 4:05 PM
> To: Raghavendra Kakarla
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Issue with yocto ADT
>=20
> Hello Raghavendra,
>=20
> Please try the following:
>=20
> Right click on your project - Properties - C/C++ Build - Select the
> 'Behavior' tab - untick 'Build on resource save' and remove 'all' from
> the 'Build' field
>=20
> Cheers,
> Todor
>=20
> On Fri, 2015-05-15 at 09:32 +0000, Raghavendra Kakarla wrote:
> > Hi All,
> >
> >
> > I have problem with the ADT while i am building the autotool example
> > helloword project which is given in the "yocto ADT autotool project".
> >
> >
> > Could you please help me in resolving this issue.
> >
> >
> > I followed the following steps for installing the adt in my
> > development PC:
> >
> >
> >
> > I built the toolchain using the following command:
> >
> > $cd ~/poky
> > $source ./oe-init-build-env
> > $bitbake meta-ide-support
> >
> >
> > Extract the root file system by using the following commands:
> >
> > $cd ~
> > $source ~/poky/build/tmp/environment-setup-mips32r2el-poky-linux
> > $runqemu-extract-sdk \
> >         ~/poky/build/tmp/deploy/images/arqlyn/
> > core-image-minimal-dhruwa_ioe-20150511102759.rootfs.tar.bz2\
> >         $HOME/arqlyn
> >
> > I followed the command given in the yocto project dev-manual for
> > installing eclipse and adding yocto plugin to eclipse.
> >
> > I Gave the following data to the eclipse for configuring the
> > cross-compiler options:
> >
> > 1. I select the "Build System Derived Toolchain"
> > 2.point the toolchain path to "home/testuser/poky/build"
> > 3.gave sysroot path to /home/testuser/arqlyn
> >
> > After entered this information I got the my machine-name in the
> > "select the target architecture" filed.
> >
> > After this I create a autotool support project and tried to build but
> > it gives the error.
> >
> > Regards,
> >
> > Raghavendra.
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20


--=-s1hykcOh/Wm+VN3xEaOn
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
KoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xNTA1MTUxMTExNTBaMCMGCSqGSIb3DQEJBDEWBBRP
a+rnvkb1XOsVxDNqwQE/ibC4KzCBmAYJKwYBBAGCNxAEMYGKMIGHMHkxCzAJBgNVBAYTAlVTMQsw
CQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENvcnBvcmF0
aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDRBAgoRaRDYAAAA
AEhlMIGaBgsqhkiG9w0BCRACCzGBiqCBhzB5MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDAS
BgNVBAcTC1NhbnRhIENsYXJhMRowGAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMi
SW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSA0QQIKEWkQ2AAAAABIZTANBgkqhkiG9w0B
AQEFAASCAQBjiGIZa364SXMNP45aNEVKyZPMYUCd7NzuYao23VjijdF8AxKgrqq32LBc0mM7g/zd
uzHNosCrW2MFresj31lCIx62x1qt4SmSWLst9lvPaUwrOAv6fJrPGcU0Qmbwo0La+f8fj+AuiVtl
8Bi9uKxZnjTeuMnJPc0vE66hzFAy+Rp9riWP3H338D03Sh3Y4hnr8sxNCmk1RJ4ZqbaAVqyACIwP
sogQcAkzrIGQjlNDkLfCI5iTlAaPtVDG2ejrxbrfjNNUOhwJWAV0xensxnrg7W5o9BRi6Iw1GxTe
rKtDs2ToeCqRuuwtKb7AScUgI9e0yYAZtL51Dipgp55FVWCvAAAAAAAA

--=-s1hykcOh/Wm+VN3xEaOn--
