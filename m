Return-Path: <jean-marie.lemetayer@savoirfairelinux.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2BEB3E00D6A; Tue, 16 Jul 2019 08:25:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [208.88.110.44 listed in list.dnswl.org]
X-Greylist: delayed 388 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Jul 2019 08:25:34 PDT
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
	[208.88.110.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85DF1E00D63
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 08:25:34 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id EA8349C01AE;
	Tue, 16 Jul 2019 11:19:04 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id uZ_Z5SQaYK0b; Tue, 16 Jul 2019 11:19:04 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 470B59C0301;
	Tue, 16 Jul 2019 11:19:04 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id c0zTRtnJfelb; Tue, 16 Jul 2019 11:19:04 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com
	[192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 24DCF9C01AE;
	Tue, 16 Jul 2019 11:19:04 -0400 (EDT)
Date: Tue, 16 Jul 2019 11:19:04 -0400 (EDT)
From: Jean-marie Lemetayer <jean-marie.lemetayer@savoirfairelinux.com>
To: Andy Pont <andy.pont@sdcsystems.com>
Message-ID: <254630894.6411337.1563290344047.JavaMail.zimbra@savoirfairelinux.com>
In-Reply-To: <emc0ba868c-6ea5-4403-85de-457b09e9cd3c@andys-imac.local>
References: <emc0ba868c-6ea5-4403-85de-457b09e9cd3c@andys-imac.local>
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.11_GA_3737 (ZimbraWebClient - GC75 (Linux)/8.8.11_GA_3737)
Thread-Topic: Pre-installing node.js packages
Thread-Index: jCKXxg72pD5GugLesLl5j/3va1CjTg==
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Pre-installing node.js packages
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
X-List-Received-Date: Tue, 16 Jul 2019 15:25:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

You can check this link: https://wiki.yoctoproject.org/wiki/TipsAndTricks/N=
PM

I have recently added some fixes concerning npm. But I still have
some issues using devtool: e.g the lockdown.json generation using
the npm lockdown module is erroneous.

I have no time for now, but I have planned to upstream some fixes.

----- Original Message -----
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "Yocto-mailing-list" <yocto@yoctoproject.org>
Sent: Tuesday, July 16, 2019 5:03:27 PM
Subject: [yocto] Pre-installing node.js packages

Hello,

Is there a way to add node.js packages into a build?  I=E2=80=99m trying to=
=20
avoid having to include npm and compiler into my target image.

-Andy.

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

