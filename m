Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-1.stofanet.dk (mx-aarh-1.stofanet.dk [212.10.10.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAF15E008B6
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 13:44:07 -0800 (PST)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-1.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1W10uz-0008JI-0b
	for yocto@yoctoproject.org; Wed, 08 Jan 2014 22:44:05 +0100
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id E80F27EDD0
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 22:44:04 +0100 (CET)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Wed, 08 Jan 2014 22:44:04 +0100
Message-ID: <1487744.eQmCUL1Wba@koontz>
User-Agent: KMail/4.12 (Linux/3.13.0-1-generic; KDE/4.12.0; i686; ; )
In-Reply-To: <52CDC53F.2050906@linaro.org>
References: <1723630.4SPRZoJkQD@koontz> <52CDC53F.2050906@linaro.org>
MIME-Version: 1.0
Subject: Re: Yocto and ccache
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
X-List-Received-Date: Wed, 08 Jan 2014 21:44:12 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"


> I don't think it's necessary to explicitly use ccache since the OE/Yo=
cto
> framework already provides a sstate.bbclass which implements this sor=
t
> of logic and is designed to work better with the sorts of things bitb=
ake
> does:

Yes, it does only cache complete compiled and packed recipes. My workfl=
ow will=20
many times be tat I compile the same software with minor changes. And s=
ince it=20
is always from scratch it will always take the same amount of time. Bas=
ically=20
I use Jenkins for rebuilding my image and specific recipes are then tra=
cking a=20
branch in my application.

--=20
S=F8ren Holm

