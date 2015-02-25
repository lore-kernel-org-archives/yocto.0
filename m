Return-Path: <todor.minchev@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E780E00754; Wed, 25 Feb 2015 06:42:15 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E884E00546
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 06:42:11 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 25 Feb 2015 06:42:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,645,1418112000"; 
	d="p7s'?scan'208";a="532672732"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
	by orsmga003.jf.intel.com with ESMTP; 25 Feb 2015 06:33:03 -0800
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
	IRSMSX109.ger.corp.intel.com (163.33.3.23) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Wed, 25 Feb 2015 14:42:07 +0000
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.117]) by
	irsmsx155.ger.corp.intel.com ([169.254.14.159]) with mapi id
	14.03.0195.001; Wed, 25 Feb 2015 14:42:07 +0000
From: "Minchev, Todor" <todor.minchev@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Thread-Topic: [yocto] merging eclipse-poky-juno & eclipse-poky-kepler
Thread-Index: AQHQUPypmloFg5gfEEyS48YCNmE+4p0Baa0AgAAGyAA=
Date: Wed, 25 Feb 2015 14:42:06 +0000
Message-ID: <1424875322.1467.4.camel@tminchev-desk>
References: <1424869930.7658.6.camel@intel.com>
	<CAPhnLPBW7fTVaUVzUyTKrPQtF8uTcWAKGTFyo8kiDPDbmyMTKA@mail.gmail.com>
In-Reply-To: <CAPhnLPBW7fTVaUVzUyTKrPQtF8uTcWAKGTFyo8kiDPDbmyMTKA@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.28.33.150]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: merging eclipse-poky-juno & eclipse-poky-kepler
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
X-List-Received-Date: Wed, 25 Feb 2015 14:42:15 -0000
X-Groupsio-MsgNum: 23747
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature";
	boundary="=-8RJOvOKenP6bCD/U42Nj"

--=-8RJOvOKenP6bCD/U42Nj
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2015-02-25 at 14:17 +0000, Flanagan, Elizabeth wrote:
> On 25 February 2015 at 13:12, Minchev, Todor <todor.minchev@intel.com> wr=
ote:
> > Hello,
> >
> > I just wanted to check if anyone is using the Yocto ADT Eclipse plug-in
> > from the eclipse-poky repo here:
> >
> > http://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky/
> >
> > This repo hasn't been maintained for a couple of years. The most
> > up-to-date code for the ADT plug-ins for Eclipse Juno & Kepler can be
> > found in these two repos.
> >
> > http://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky-juno/
> > http://git.yoctoproject.org/cgit/cgit.cgi/eclipse-poky-kepler/
> >
> > We have decided to merge the two repos above and maintain the plug-in
> > under the original eclipse-poky repo for all versions of Eclipse.
> > In other words, we are planning to overwrite eclipse-poky with the merg=
e
> > result from eclipse-poky-juno and eclipse-poky-kepler.
> >
> > I am planning to do this on Friday, 27 Feb 2015. If anyone has any
> > objections please let me know before then.
> >
>=20
> My only concern is that we:
>=20
> - maintain history

All history is preserved.=20

> - get autobuilder changes in when the merge is done
>=20
> If you could explain the eventual layout of the new merged repo, that
> would be grand.

All branches and tags from the eclipse-poky-kepler and eclipse-poky-juno
repositories will be reachable with the same branch/tag names and the
kepler or juno prefix respectively.=20

The development(master) branches for juno, kepler and luna are:

juno-master
kepler-master
luna-master
master - tracks the master branch for the latest supported Eclipse
release (luna-master at present)=20

This is the repo structure after the merge:

  Branches =20

  juno-master
  juno/1.1_M1
  juno/1.1_M2
  juno/1.1_M4
  juno/1.2_M1
  juno/1.2_M2
  juno/1.2_M3
  juno/1.2_M4
  juno/1.3_M1
  juno/1.3_M2
  juno/1.3_M3
  juno/1.3_M4
  juno/1.3_M5
  juno/1.3_beta
  juno/1.4_M1
  juno/1.4_M3
  juno/1.4_M4
  juno/1.4_M5
  juno/daisy
  juno/danny
  juno/denzil
  juno/dizzy
  juno/dora
  juno/dylan
  juno/edison
  kepler-master
  kepler/daisy
  kepler/dizzy
  kepler/dora
* luna-master
  master

Tags

juno/1.1_M1.rc1
juno/1.1_M1.rc2
juno/1.1_M2.final
juno/1.1_M2.rc1
juno/1.1_M2.rc3
juno/1.1_M3.final
juno/1.1_M3.rc3
juno/1.1_M4.rc2+
juno/1.1_M4.rc4
juno/1.2_M1.final
juno/1.2_M1.rc1
juno/1.2_M1.rc2
juno/1.2_M2.final
juno/1.2_M2.rc1
juno/1.2_M3.final
juno/1.2_M3.rc1
juno/1.2_M4.rc1
juno/1.2_M4.rc4
juno/1.2_M4.rc4.0
juno/1.3
juno/1.3.2
juno/1.3.2.final
juno/1.3_M1.final
juno/1.3_M2.final
juno/1.3_M2.rc1
juno/1.3_M3.final
juno/1.3_M3.rc2
juno/1.3_M4.final
juno/1.3_M4.rc1
juno/1.3_M5.rc1
juno/1.3_M5.rc2
juno/1.3_M5.rc3
juno/1.3_M5.rc4
juno/1.4.1.rc1
juno/1.4_M1.final
juno/1.4_M1.rc1
juno/1.4_M3.final
juno/1.4_M3.rc1
juno/1.4_M3.rc2
juno/1.4_M4.final
juno/1.4_M4.rc1
juno/1.4_M5.final
juno/1.4_M5.rc1
juno/1.4_M5.rc2
juno/1.4_M5.rc3
juno/1.4_M6.rc1
juno/1.5_M1.final
juno/1.5_M1.rc1
juno/1.5_M2.rc1
juno/1.5_M3
juno/1.5_M3.final
juno/1.5_M3.rc1
juno/1.5_M4
juno/1.5_M4.final
juno/1.5_M4.rc1
juno/1.5_M4.rc2
juno/1.5_M4.rc3
juno/1.5_M5.rc1
juno/1.5_M5.rc2
juno/1.5_M5.rc3
juno/1.5_M5.rc4
juno/1.5_M5.rc5
juno/1.5_M5.rc6
juno/1.5_M5.rc7
juno/1.5_M5.rc8
juno/1.6_M1
juno/1.6_M1.final
juno/1.6_M1.rc1
juno/1.6_M2
juno/1.6_M3
juno/1.6_M3.final
juno/1.6_M4
juno/bernard-5.0
juno/daisy-11.0.0
juno/daisy-11.0.1
juno/daisy-11.0.2
juno/danny-8.0.1
juno/danny-8.0.2
juno/denzil-7.0
juno/denzil-7.0.0
juno/denzil-7.0.1
juno/denzil-7.0.1_rc2
juno/denzil-7.0.2
juno/dizzy-12.0.0
juno/dizzy-12.0.1
juno/dora-10.0.0
juno/dora-10.0.1
juno/dora-10.0.1.final
juno/dora-10.0.2
juno/dora-10.0.3
juno/dora-10.0.4
juno/dylan-9.0.0
juno/dylan-9.0.1
juno/dylan-9.0.1.rc1
juno/dylan-9.0.2
juno/dylan-9.0.2.rc1
juno/dylan-9.0.3
juno/dylan-9.0.4
juno/edison-6.0
juno/edison-6.0.1
juno/edison-6.0.1.final
juno/edison-6.0.1.release
juno/edison-6.0.2
juno/edison-6.0.2_rc1
juno/poky-10.0.0.final
juno/poky-10.0.1
juno/poky-10.0.1.final
juno/yocot-1.4.2
juno/yocto-1.4.1
juno/yocto-1.4.2
juno/yocto-1.4.2.rc1
juno/yocto-1.4.3
juno/yocto-1.4.4
juno/yocto-1.5
juno/yocto-1.5.1
juno/yocto-1.5.1.final
juno/yocto-1.5.2
juno/yocto-1.5.3
juno/yocto-1.5.4
juno/yocto-1.5.final
juno/yocto-1.5_M5.rc2
juno/yocto-1.6
juno/yocto-1.6.1
juno/yocto-1.6.2
juno/yocto-1.7
juno/yocto-1.7.1
juno/yocto_1.5_M5.rc8
kepler/1.5_M3
kepler/1.5_M3.final
kepler/1.5_M3.rc1
kepler/1.5_M4
kepler/1.5_M4.final
kepler/1.5_M4.rc1
kepler/1.5_M4.rc2
kepler/1.5_M4.rc3
kepler/1.5_M5.rc1
kepler/1.5_M5.rc2
kepler/1.5_M5.rc3
kepler/1.5_M5.rc4
kepler/1.5_M5.rc5
kepler/1.5_M5.rc6
kepler/1.5_M5.rc7
kepler/1.5_M5.rc8
kepler/1.6_M1
kepler/1.6_M1.final
kepler/1.6_M1.rc1
kepler/1.6_M2
kepler/1.6_M3
kepler/1.6_M3.final
kepler/1.6_M4
kepler/daisy-11.0.0
kepler/daisy-11.0.1
kepler/daisy-11.0.2
kepler/dizzy-12.0.0
kepler/dizzy-12.0.1
kepler/dora-10.0.0
kepler/dora-10.0.1
kepler/dora-10.0.1.final
kepler/dora-10.0.2
kepler/dora-10.0.3
kepler/dora-10.0.4
kepler/poky-10.0.0.final
kepler/poky-10.0.1
kepler/poky-10.0.1.final
kepler/yocto-1.5
kepler/yocto-1.5.1
kepler/yocto-1.5.1.final
kepler/yocto-1.5.2
kepler/yocto-1.5.3
kepler/yocto-1.5.4
kepler/yocto-1.5.final
kepler/yocto-1.5_M5.rc2
kepler/yocto-1.6
kepler/yocto-1.6.1
kepler/yocto-1.6.2
kepler/yocto-1.7
kepler/yocto-1.7.1
kepler/yocto_1.5_M5.rc8


Branches hidden from the cgit browser:

juno/
=E2=94=94=E2=94=80=E2=94=80 heads
    =E2=94=9C=E2=94=80=E2=94=80 ADT_helios
    =E2=94=9C=E2=94=80=E2=94=80 JunoSSH
    =E2=94=9C=E2=94=80=E2=94=80 JunoTCF
    =E2=94=9C=E2=94=80=E2=94=80 jzhang
    =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 kepler-build
    =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 remote-adt
    =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 windows-build
    =E2=94=9C=E2=94=80=E2=94=80 lke
    =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 indigo
    =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 prompt_version
    =E2=94=9C=E2=94=80=E2=94=80 llu
    =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 ssh
    =E2=94=9C=E2=94=80=E2=94=80 master
    =E2=94=9C=E2=94=80=E2=94=80 master-indigo
    =E2=94=94=E2=94=80=E2=94=80 release
        =E2=94=9C=E2=94=80=E2=94=80 0.9
        =E2=94=9C=E2=94=80=E2=94=80 1.0
        =E2=94=94=E2=94=80=E2=94=80 m2

kepler/
=E2=94=94=E2=94=80=E2=94=80 heads
    =E2=94=9C=E2=94=80=E2=94=80 jzhang
    =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 consolidate-remote
    =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 consolidate-remote2
    =E2=94=9C=E2=94=80=E2=94=80 master
    =E2=94=94=E2=94=80=E2=94=80 remote-refactor

--Todor=20

>=20
> Other than those concerns, I'm fine with the merge.
>=20
> > Thanks,
> >
> > Todor
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>=20
>=20
>=20


--=-8RJOvOKenP6bCD/U42Nj
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIQ3jCCBOsw
ggPToAMCAQICEFLpAsoR6ESdlGU4L6MaMLswDQYJKoZIhvcNAQEFBQAwbzELMAkGA1UEBhMCU0Ux
FDASBgNVBAoTC0FkZFRydXN0IEFCMSYwJAYDVQQLEx1BZGRUcnVzdCBFeHRlcm5hbCBUVFAgTmV0
d29yazEiMCAGA1UEAxMZQWRkVHJ1c3QgRXh0ZXJuYWwgQ0EgUm9vdDAeFw0xMzAzMTkwMDAwMDBa
Fw0yMDA1MzAxMDQ4MzhaMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2Fu
dGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRl
cm5hbCBCYXNpYyBJc3N1aW5nIENBIDRBMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
4LDMgJ3YSVX6A9sE+jjH3b+F3Xa86z3LLKu/6WvjIdvUbxnoz2qnvl9UKQI3sE1zURQxrfgvtP0b
Pgt1uDwAfLc6H5eqnyi+7FrPsTGCR4gwDmq1WkTQgNDNXUgb71e9/6sfq+WfCDpi8ScaglyLCRp7
ph/V60cbitBvnZFelKCDBh332S6KG3bAdnNGB/vk86bwDlY6omDs6/RsfNwzQVwo/M3oPrux6y6z
yIoRulfkVENbM0/9RrzQOlyK4W5Vk4EEsfW2jlCV4W83QKqRccAKIUxw2q/HoHVPbbETrrLmE6RR
Z/+eWlkGWl+mtx42HOgOmX0BRdTRo9vH7yeBowIDAQABo4IBdzCCAXMwHwYDVR0jBBgwFoAUrb2Y
ejS0Jvf6xCZU7wO94CTLVBowHQYDVR0OBBYEFB5pKrTcKP5HGE4hCz+8rBEv8Jj1MA4GA1UdDwEB
/wQEAwIBhjASBgNVHRMBAf8ECDAGAQH/AgEAMDYGA1UdJQQvMC0GCCsGAQUFBwMEBgorBgEEAYI3
CgMEBgorBgEEAYI3CgMMBgkrBgEEAYI3FQUwFwYDVR0gBBAwDjAMBgoqhkiG+E0BBQFpMEkGA1Ud
HwRCMEAwPqA8oDqGOGh0dHA6Ly9jcmwudHJ1c3QtcHJvdmlkZXIuY29tL0FkZFRydXN0RXh0ZXJu
YWxDQVJvb3QuY3JsMDoGCCsGAQUFBwEBBC4wLDAqBggrBgEFBQcwAYYeaHR0cDovL29jc3AudHJ1
c3QtcHJvdmlkZXIuY29tMDUGA1UdHgQuMCygKjALgQlpbnRlbC5jb20wG6AZBgorBgEEAYI3FAID
oAsMCWludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEAKcLNo/2So1Jnoi8G7W5Q6FSPq1fmyKW3
sSDf1amvyHkjEgd25n7MKRHGEmRxxoziPKpcmbfXYU+J0g560nCo5gPF78Wd7ZmzcmCcm1UFFfIx
fw6QA19bRpTC8bMMaSSEl8y39Pgwa+HENmoPZsM63DdZ6ziDnPqcSbcfYs8qd/m5d22rpXq5IGVU
tX6LX7R/hSSw/3sfATnBLgiJtilVyY7OGGmYKCAS2I04itvSS1WtecXTt9OZDyNbl7LtObBrgMLh
ZkpJW+pOR9f3h5VG2S5uKkA7Th9NC9EoScdwQCAIw+UWKbSQ0Isj2UFL7fHKvmqWKVTL98sRzvI3
seNC4DCCBXowggRioAMCAQICEzMAAF9mzuWWtUHgbvUAAAAAX2YwDQYJKoZIhvcNAQEFBQAweTEL
MAkGA1UEBhMCVVMxCzAJBgNVBAgTAkNBMRQwEgYDVQQHEwtTYW50YSBDbGFyYTEaMBgGA1UEChMR
SW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElzc3Vpbmcg
Q0EgNEEwHhcNMTQxMDIwMTk1ODQ4WhcNMTcxMDA0MTk1ODQ4WjBBMRcwFQYDVQQDEw5NaW5jaGV2
LCBUb2RvcjEmMCQGCSqGSIb3DQEJARYXdG9kb3IubWluY2hldkBpbnRlbC5jb20wggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQChZEmRUCTZu/10YB1D5pjLUSInqeNdbq8gdwClnbvhSqni
b4xLETBFO3lVRVRlRFIz9tc1auJGVYr39a968RcGjgMpLys8Mj67uQfCaBUIx3YvoYAEc5JIqR2e
v0MbDxD0wQKvqhbT4zQMS5c+lei3D2n4BA5dx0A7AT99ko/qPzuXCDdk3L0FVqi43M4zfqmxNarg
jIJoc4sx0US/hrfWXU6Kg/sL0WQ+gM8XrWPXJYWk1PoRSAvUCruQGrnN7txUmvTEfuXv3i9NwtuE
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
KoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xNTAyMjUxNDQyMDJaMCMGCSqGSIb3DQEJBDEWBBTA
uS1N0u+ey1wQmMaBYUB+qA75qzCBmAYJKwYBBAGCNxAEMYGKMIGHMHkxCzAJBgNVBAYTAlVTMQsw
CQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENvcnBvcmF0
aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDRBAgoRaRDYAAAA
AEhlMIGaBgsqhkiG9w0BCRACCzGBiqCBhzB5MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDAS
BgNVBAcTC1NhbnRhIENsYXJhMRowGAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMi
SW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSA0QQIKEWkQ2AAAAABIZTANBgkqhkiG9w0B
AQEFAASCAQAwu9b/+2KYf5o3UnSpU4O2wW7TtnfzzZXvrifi/3sPYd/f8Q7U6aSuz5eeJcRuEf89
gPQ1s8U8lyLHoWbRPv5tMZ1fgk1HWVbc3CnNwx0zWFCHQGb2Ily08/qkGuKs1FrPx31iYTelWgfW
vYO7YPaQjV0U5RBQdpXAOCgcIdrj5KLG0tjGO1Qh/qeU4JFooPstloZTM9uflCcbRlfChJueHdP/
hTURAiWm9V03PYf+F030VmBzBi9QXMUhPYacbO3yZBliebxQxtZPAhU+mfY9JL6kPYkMkWoyt3ev
422eb50QMeNIq0lkHGmSNQwsTyhi454oe63Wh407DQ0L54fSAAAAAAAA

--=-8RJOvOKenP6bCD/U42Nj--
