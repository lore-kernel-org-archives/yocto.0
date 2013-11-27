Return-Path: <prvs=0364f9318=Richard.Leitner@skidata.com>
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58CF6E0053B
	for <yocto@yoctoproject.org>; Wed, 27 Nov 2013 08:02:42 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhUKAA0XllKsEApK/2dsb2JhbABZhBKUP6RVgTR0giUBAQEEbgsMBAIBCA0EBAEBCx0HHxMUCQgBAQQOBQgTh2vAMheOUTEHBoMagRMDiQqFTJAqjRKBPoIq
X-IPAS-Result: AhUKAA0XllKsEApK/2dsb2JhbABZhBKUP6RVgTR0giUBAQEEbgsMBAIBCA0EBAEBCx0HHxMUCQgBAQQOBQgTh2vAMheOUTEHBoMagRMDiQqFTJAqjRKBPoIq
From: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>
To: "Stath, Paul" <PStath@Axxcelera.com>
Thread-Topic: Errors with update-rc.d: /etc/init.d/XXX exists during rc.d
	purge (use -f to force)
Thread-Index: Ac7riB/iN8kVuR9nQV2la7Le6ji4swAADzjw
Date: Wed, 27 Nov 2013 16:02:38 +0000
Message-ID: <F7680723A1CA6840825A59020FA77064FCDE02@sdexmbx1srv.skidata.net>
References: <5B5D636C5F0AA747B37D0EFC72B563C422292F1E@RIC-MS02.MWSG.int>
In-Reply-To: <5B5D636C5F0AA747B37D0EFC72B563C422292F1E@RIC-MS02.MWSG.int>
Accept-Language: en-US, de-AT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.112.215]
MIME-Version: 1.0
Cc: "Yocto Project Discussion ML \(yocto@yoctoproject.org\)"
	<yocto@yoctoproject.org>
Subject: Re: Errors with update-rc.d: /etc/init.d/XXX exists during rc.d purge (use -f to force)
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
X-List-Received-Date: Wed, 27 Nov 2013 16:02:46 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Paul,
good to hear I'm not the only one suffering from this issue...
No, I've received no response on the mailing list yet, but maybe someone ha=
s a hint for us now?

The only "workaround" I found is to purge the package and afterwards instal=
l the new version.
I know this is a really dirty workaround, but it's the only "solution" I fo=
und.

Have you discovered any other workarounds, Paul?

regards
Richard

>-----Original Message-----
>From: Stath, Paul [mailto:PStath@Axxcelera.com]=20
>Sent: Wednesday, November 27, 2013 4:49 PM
>To: Richard Leitner - SKIDATA
>Subject: RE: Errors with update-rc.d: /etc/init.d/XXX exists during rc.d p=
urge (use -f to force)
>
>Richard --
>
>I am also getting the "update-rc.d: /etc/init.d/XXX exists during rc.d pur=
ge"=A0 error when I attempt to install a newer version of one of my package=
s.
>
>It doesn't look like you received any response to your post to the yocto m=
ailing list.
>
>Did you get any response, or did you discover a workaround?
>
>--
>Paul Stath
>Axxcelera Broadband Wireless

