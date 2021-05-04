Received: from thsbbfxrt02p.thalesgroup.com (thsbbfxrt02p.thalesgroup.com [192.93.158.29])
 by mx.groups.io with SMTP id smtpd.web12.4298.1620127995350164451
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 04:33:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thalesgroup.com header.s=xrt20181201 header.b=BNtnjuqO;
 spf=pass (domain: thalesgroup.com, ip: 192.93.158.29, mailfrom: krzysztof.dudziak@thalesgroup.com)
Received: from thsbbfxrt02p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 4FZHlX74fRzJpVN
	for <yocto@lists.yoctoproject.org>; Tue,  4 May 2021 13:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thalesgroup.com;
	s=xrt20181201; t=1620127993;
	bh=ix0N7zFU/fu6/6PcSrgVA3KUL4GVeIrf93ixqaIPaTY=;
	h=From:To:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Transfer-Encoding:MIME-Version:From;
	b=BNtnjuqOu/kN8JYCDgdoa+i8+9Kb/PGtvDysXySlEWehbXrEafCllQX9GwFHe8/C7
	 1TOrljb6EF6H6im82w09zg4AKDtms7zThUwzNmUpnlIvFxRysrfQk4s9J9Umvkxim1
	 Wq5rmNHgO4WQlkHKSnwTH2AVFVxVWsgaPx1PcitqeP4YK1ePYh71esZOqJo1Buvm4H
	 Ge9lS7y4B1YRSEtxYe3mjyWGmtAcbwx5RDdzYzzp024mIejySvnqLeqF96QP3kvsep
	 mVHWNTPe4/GxWJD9XYQMrGJZtkKE7Fxq8RF0W/CqwqkVsPLHwvtqrCpp9K0oIQ5eSm
	 NZqEv3wd1aEWQ==
X-MTA-CheckPoint: {609130F8-0-C22F090A-6627}
Authentication-Results: thsbbfxss02p.thalesgroup.com;
	dkim=pass (1024-bit key; unprotected) header.d=thalesgroup.onmicrosoft.com header.i=@thalesgroup.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-thalesgroup-onmicrosoft-com header.b=5x2E7F9i;
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L+KwmUHfSXXZLIAFHeByq66Mw+KFQNbQ4MzLj5tt6yYSzhJt+9Op7BnJiB0Kyn21BN84roXLztRC1GoS/zF/y4HKJtn0L37neeCU2IURmAYfKZemToIIYc5OPh7oq449Jp+K6ABE8z8M6IzVf529ee8DQou+e98q565/0q1RKctpMmSjhR94ayY1vPzGMgp14pV3Eo1ZvOOU03QUjbeL72lk6IMD+BcR8qN1cjVyJ8tAIzWc/kY6wDGntkqQc5Z7tZUXptVp95XSdDIOH+/Km6wjLs+SJb/wAPhW8WZg1YK+qmNPfhdunqD1YbIoHzhWGsk66yZl9BitZ64C2gqtJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ix0N7zFU/fu6/6PcSrgVA3KUL4GVeIrf93ixqaIPaTY=;
 b=R8mYTEzNNvpyge9iknFbNJclQIMOOmO4cMk3TEkMXsNOrYUjJkeoNWxVKYHF2jL2vml9xufeit7bI2qBbSN+UFCh0Bx8GHArZ8Zp85m3NiOcyG5M+vB2PITeZZc21JGmUNODYyuQg6DoAXc+oTCdaWLMC0GlGwpJAZo1CAHGkTegvICE50xrZZNngxqKVebDFEm0EHI14hRbXCUncIhPc97rp+rSU6Z014l+TNFZQbn9d+Lde2cTs3kMR3j/pcN63D0152KHO1CPj4U/CvqbS/SiYmbHwx3H///3/S/DHW+luxWw0S4SEzigKQ2kk2Tpwrrp3ncMb/PltiSn81m2Ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=thalesgroup.com; dmarc=pass action=none
 header.from=thalesgroup.com; dkim=pass header.d=thalesgroup.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thalesgroup.onmicrosoft.com; s=selector2-thalesgroup-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ix0N7zFU/fu6/6PcSrgVA3KUL4GVeIrf93ixqaIPaTY=;
 b=5x2E7F9iNIXRkmX0Y0B7g9Pe2F55u4y5m2lbgxtri3AS7ufO/ORashu5UttsNXmepc8dN0npb07y7uoj2vSvouYLaEIFNNSYCdCcWy2IBoN1htHta0XCalCbaUa75UduJm0q86TOUKIDoEo1jj6en/WOvkDYcRf8XflNFIKUKBw=
From: "keydi" <krzysztof.dudziak@thalesgroup.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Criteria for bitbake to skip recipes #bitbake
Thread-Topic: [yocto] Criteria for bitbake to skip recipes #bitbake
Thread-Index: AQHXQHtu+3PbwgYbjEaKJwhOW5U3BqrTHudg
Date: Tue, 4 May 2021 11:33:11 +0000
Message-ID: 
 <PR0P264MB08899DEB1629754342F6B095E15A9@PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM>
References: <UwKG.1619454301440268051.cdrJ@lists.yoctoproject.org>
 <c486e3b3-8d37-84aa-3b40-9850ff8be94f@windriver.com>
In-Reply-To: <c486e3b3-8d37-84aa-3b40-9850ff8be94f@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=thalesgroup.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 54ab0449-cc91-46f6-5c6b-08d90ef065e9
x-ms-traffictypediagnostic: PR1P264MB2014:
x-microsoft-antispam-prvs: 
 <PR1P264MB2014F12C69E8FC90030E4C4DE15A9@PR1P264MB2014.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 KzC5qdZaWNPCcS1uam4ZWXKs44BDHBnJrRXFTwesgDp2D+WVqxXeE9QUU24s/LQXCkd1t82NyXeRuBQyBQQYYhB4fEMz0PI2fekqYO0eYVsaH14QGT5k1sDyPyLfTOdndsxQ1MIGrqfAcnRq7wb1nS7iMDQNIRLipgIF53L1j/Q5o8UER0Mx7hv0Rtua8hA4ru21SJiQ5NIT6d0jmKoNLNLt8dmmjmCy+LA7Bpyn+gkaVeVPr85MBlgUbPikcYzmLX9UwTWrP5pgAKbATG/OFJRg1OOM43ZgWDXxLYaAnNRljLj2pxCzLKWfLn4bcVuZTRRX2l6oqqcxcy+te7azwnrnLtmWxSOulaCOsxDJBGTpiSBx4ZD5yKjQMbYBtbdsnjUCZBMSQZk10vPMV94uSpYHvDAi+B1KJxRzfWtIjNobuBYBw7m/Zxpx19dLpbYfk2YDmgTGVq2SZjt7Zl/EVEFJ3EBf5p97Fgoaee6Q15BQeTHnX63vfiVjP9EKdw2KUGjOXr3VXRvomEeC3/fQ5sV80bSu9IiFMIfoBut5Q/85uE5eSuDC8//QJiI2m7RC5HS+fdllzTJwqFVitKhuuujGbyz+Xp5QDSTocXIisHI=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(39850400004)(396003)(366004)(376002)(55016002)(7696005)(71200400001)(6916009)(26005)(6506007)(66556008)(66446008)(76116006)(122000001)(64756008)(9686003)(5660300002)(4744005)(52536014)(86362001)(8936002)(66946007)(66476007)(316002)(478600001)(2906002)(33656002)(38100700002)(186003)(8676002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 =?iso-8859-1?Q?bRFxcuj8RKuZ/wEjURBEEDbfeyA/C8OskOo+t7LqAuIoixBGVv9kdLixEQ?=
 =?iso-8859-1?Q?QEKab4Sfq5XjAtUv9cjf00Qd82TYsSfp0ig2zHpJwGLSraaSSt4estRT5e?=
 =?iso-8859-1?Q?ozQpj22Wziu3CXQMBwHp2qetQXBlzYNuQ2cWNsRnaEAtij92TJu2PlloIk?=
 =?iso-8859-1?Q?onWUNS4BQkIoe2rpfvX71zdgux/kyn+kcrv4oJGzw4vN9KuatXJChPj4qT?=
 =?iso-8859-1?Q?FUdmZbl7VtMtOf3AC6N52c/KOAKY/S0z0Y//v/3/UpvzQkJaod/SLR93kc?=
 =?iso-8859-1?Q?WNSEqpDwylmx8ojzubDxjVyk/wrW+mZcL3zQDAN0FhgYGulP/Q6vcX0hNr?=
 =?iso-8859-1?Q?NUs0G3F02uur2hJ+MJkAgU9zpGxDHmuoiJMqxCizmx4guHWaaGypZxNmU+?=
 =?iso-8859-1?Q?TJOOgYHdszggRIYEcbSynQpXPwe+ci4z1pkzXZeLCMJG0nzhM+8T1FYw/J?=
 =?iso-8859-1?Q?zPRVtLUWWl8Jz15LiD+aVbqc62MgKn0w0Unq6b5EIYrMqc2sjWvS7zLClZ?=
 =?iso-8859-1?Q?QRv3KIkMKwNEXwKSMnSrDsY7Z2bF45GwGCrNHq6i1Mxc45LGChvdECeGRC?=
 =?iso-8859-1?Q?fqrVhzNVp4b8WFTWlxrDwcTxuIG+e9M6ziKDCYJ9c3A8yNClHnzAXMP8pp?=
 =?iso-8859-1?Q?jHh6Y5FbYg6WT+RLuYSvhlYCnoagwjRE66oFALNREN+2mw45QvtexTy8A0?=
 =?iso-8859-1?Q?JWzRJ7Dr9pRnmVWXIubJCWwDuJYnfotfpztyuoR8DVWu4jEc8ySfybm6iE?=
 =?iso-8859-1?Q?ujHhAWVdsVldHfWTm8758QzaCHt3k+0hqmC7A5xCUICbNjLDU1nvDo4OPD?=
 =?iso-8859-1?Q?CPaugGDM07mDnIIgH5311KZr0ipZ0DhTMMGLV9HPK2P8flrenNImkezG0i?=
 =?iso-8859-1?Q?5OQbCQMoum0b1iypsN3d5S0MjrN6bGpu/F007G8EmzRA6qxGsh1r2BLhAW?=
 =?iso-8859-1?Q?l9J7E71IGlI5ZU4+MZ/0yXFOh0CB8I6VY1xcHmhKIb5BdSEIIjqLzhkhGW?=
 =?iso-8859-1?Q?i1J8U4ahni2+Mqtr26+HqdzqX1Upw4FqzK7LFLEsC0DSoGo6rater0Ci2f?=
 =?iso-8859-1?Q?NjGzjLqJDqe2K29X03Lx54Hdrf1gI9Vp9HhDkJ4dG0W4AFL216tavm9tCs?=
 =?iso-8859-1?Q?2Gzyhj7m5ouf/zCLaQ8/amrCJlgN4W24x3ljWXD2t0GvalRVT/BVcFitjT?=
 =?iso-8859-1?Q?f82fsx2KQIagcrvdr/YYN4cR1lR9vYupfsclAFKKF/xN9tvhdWvLMN5/Be?=
 =?iso-8859-1?Q?sIRo+DjZr1tOfvylvjUEB04QokaHnMnjtuYnjy7u220d1dqiyIoITHz7pe?=
 =?iso-8859-1?Q?6ISbNLxCY9q+Alo2mjGDs1NxkCA3HytBL15g+W12ZGJmzqkDX6Dm1AJR0B?=
 =?iso-8859-1?Q?1ascdyVvVG?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Thalesgroup.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR0P264MB0889.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 54ab0449-cc91-46f6-5c6b-08d90ef065e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2021 11:33:11.3498
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 6e603289-5e46-4e26-ac7c-03a85420a9a5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +FqDLMnLqbMzRK7uiRyBnU1cyV7tZ+7u2r2mHliKWIdSpSRF8VX1Fz94/zwEm/5VYK7dThEdeJR0aUBiBj4rjjw+ep0Nk26wxNPpufY0jD1AkPNeWo/7qi6WwIa9BwLq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR1P264MB2014
X-PMX-Version: 6.4.8.2820816, Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.5.4.112415, AntiVirus-Engine: 5.82.0, AntiVirus-Data: 2021.5.4.5820000
X-Sophos-SenderHistory: ip=104.47.25.101,fs=473466,da=68842523,mc=6946,sc=2,hc=6944,sp=0,fso=67637035,re=158,sd=0,hd=30
X-PMX-Spam: Gauge=X, Probability=10%, Report='
 TO_IN_SUBJECT 0.5, HTML_00_01 0.05, HTML_00_10 0.05, BODYTEXTP_SIZE_3000_LESS 0, BODY_SIZE_1000_LESS 0, BODY_SIZE_2000_LESS 0, BODY_SIZE_5000_LESS 0, BODY_SIZE_7000_LESS 0, BODY_SIZE_800_899 0, DKIM_SIGNATURE 0, DQ_S_H 0, IN_REP_TO 0, KNOWN_MTA_TFX 0, LEGITIMATE_SIGNS 0, MSG_THREAD 0, NO_CTA_FOUND 0, NO_CTA_URI_FOUND 0, NO_URI_FOUND 0, NO_URI_HTTPS 0, REFERENCES 0, SPF_SOFTFAIL 0, SXL_IP_TFX_WM 0, WEBMAIL_SOURCE 0, WEBMAIL_XOIP 0, WEBMAIL_X_IP_HDR 0, __ARCAUTH_DKIM_PASSED 0, __ARCAUTH_DMARC_PASSED 0, __ARCAUTH_PASSED 0, __ARC_SEAL_MICROSOFT 0, __ARC_SIGNATURE_MICROSOFT 0, __AUTH_RES_DKIM_PASS 0, __BODY_NO_MAILTO 0, __BOUNCE_CHALLENGE_SUBJ 0, __BOUNCE_NDR_SUBJ_EXEMPT 0, __COURIER_PHRASE 0, __CT 0, __CTE 0, __CT_TEXT_PLAIN 0, __DQ_IP_FSO_LARGE 0, __DQ_NEG_HEUR 0, __DQ_NEG_IP 0, __DQ_S_HIST_1 0, __DQ_S_HIST_2 0, __DQ_S_IP_1MO 0, __DQ_S_IP_MC_100_P 0, __DQ_S_IP_MC_10_P 0,
 __DQ_S_IP_MC_1K_P 0, __DQ_S_IP_MC_1_P 0, __DQ_S_IP_MC_5_P 0, __DQ_S_IP_RE_100_P 0, __DQ_S_IP_SC_1_P 0, __DQ_S_IP_SP_0_P 0, __FORWARDED_MSG 0, __FROM_DOMAIN_NOT_IN_BODY 0, __FROM_NAME_NOT_IN_BODY 0, __FUR_RDNS_OUTLOOK 0, __HAS_FROM 0, __HAS_MSGID 0, __HAS_REFERENCES 0, __HAS_XOIP 0, __IN_REP_TO 0, __MIME_TEXT_ONLY 0, __MIME_TEXT_P 0, __MIME_TEXT_P1 0, __MIME_VERSION 0, __NO_HTML_TAG_RAW 0, __RDNS_WEBMAIL 0, __REFERENCES 0, __SANE_MSGID 0, __SUBJ_ALPHA_NEGATE 0, __SUBJ_REPLY 0, __TO_IN_SUBJECT2 0, __TO_MALFORMED_2 0, __TO_NAME 0, __TO_NO_NAME 0, __URI_NO_MAILTO 0'
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

=0A=
> > I wonder what are all possible criteria for Bitbake to decide to skip=
=0A=
> > recipe (please compare to reports delivered by bitbake-layers). Recipe=
=0A=
> > overlay, recipe version, others? Which knowledge source to find more=0A=
> > details in?=0A=
> =0A=
> Maybe you can explain why you want to know why bitbake would skip a=0A=
> recipe and that will help us to help you.=0A=
> =0A=
> =0A=
Thanks for input.=0A=
In meantime certain time ago, I guess there were different types of bitbake=
-layers output=0A=
(I has short opportunity to analyze) which comment several number of packag=
es/recipes=0A=
by "recipe skipped" or something like this.=0A=
I like to be able to interpret that information properly, what's behind rec=
ipe skipped.=0A=
=0A=
Regards=0A=
kd=0A=
