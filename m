Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-3.stofanet.dk (mx-aarh-3.stofanet.dk [212.10.10.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BF6FE01796
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 16:15:23 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-3.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1Vaw1q-00087k-1K
	for yocto@yoctoproject.org; Tue, 29 Oct 2013 00:15:22 +0100
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id 352E47EC32
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 00:15:22 +0100 (CET)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Tue, 29 Oct 2013 00:15:21 +0100
Message-ID: <2255020.JhpWy0r2ff@koontz>
User-Agent: KMail/4.11.2 (Linux/3.11.0-11-lowlatency; KDE/4.11.2; i686; ; )
In-Reply-To: <1383001864-4366-1-git-send-email-sgh@sgh.dk>
References: <1383001864-4366-1-git-send-email-sgh@sgh.dk>
MIME-Version: 1.0
Subject: Re: [PATCH] e2fsprogs: Escape filenames in populate-extfs.sh
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
X-List-Received-Date: Mon, 28 Oct 2013 23:15:27 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi

I'm reposting my patch as a response tot this message. I forgot adding =
some=20
actual description of why the change is necessary. Sorry.

I would like the change to go into dora if possible.

--=20
S=F8ren Holm

