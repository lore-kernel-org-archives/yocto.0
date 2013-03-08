Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f43.google.com (mail-pb0-f43.google.com
	[209.85.160.43]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 52F7FE014E3
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 01:15:39 -0800 (PST)
Received: by mail-pb0-f43.google.com with SMTP id md12so1064980pbc.2
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 01:15:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=fU89eMFtE8hTnau7FbM+TrwGwledtwVFAkEu4sgzE+E=;
	b=VehfOG+Nm4urC/toAG4PLeCAmd5cpSOp9uTkTJt8eSjPZ7WF+BRJcUBlefDp3GNqd6
	HrTe3vb3nOScIlVZU7nevJkhqEKy0byXS7RkjVyVZqrGrRJfTKn5d1mUPXY/EoFMttxg
	YuThH6iNCEOO1Olky4iEhRyH/FlmBV7MqGETyhMCY3xGZrdQg3n20V17UHj1UGg3MPCO
	DJNvOoSbbVyOw5N12OUrp0hLEUAeN95PBUQx1aKHpoeMm4k43iLTMbaFbbij7wd8L31S
	EwthT7hqGDMjHsJrJ8IpcyyOs7Q4O5bvzXipAkJbDhgDeX1QwN+YSLw+SGsAd1LqV6D/
	fcmA==
X-Received: by 10.66.169.71 with SMTP id ac7mr3067010pac.3.1362734139159;
	Fri, 08 Mar 2013 01:15:39 -0800 (PST)
Received: from [192.168.1.91] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id eg1sm4929688pbb.33.2013.03.08.01.15.37
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 08 Mar 2013 01:15:38 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAFyqS9qxQsDao+_4Wot6vaimrY-hN=nDQgRqWOBk2YBcF1cszQ@mail.gmail.com>
Date: Fri, 8 Mar 2013 01:15:37 -0800
Message-Id: <30DACACB-1130-426B-B905-E5475A977930@gmail.com>
References: <CAFyqS9qxQsDao+_4Wot6vaimrY-hN=nDQgRqWOBk2YBcF1cszQ@mail.gmail.com>
To: =?iso-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
X-Mailer: Apple Mail (2.1499)
Cc: yocto@yoctoproject.org
Subject: Re: how to handle a source tree with both user-space and kernel module sources
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
X-List-Received-Date: Fri, 08 Mar 2013 09:15:39 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Mar 4, 2013, at 9:53 AM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:

> How could a package that is part of one single git repo but contains
> both user-space libraries and several kernel modules be built?
> Is there some existing "best praxis" that could be applied?
> Currently what we have done is to split this into two recipes, one
> that inherits from autotools and the other that inherit from module.
> This works fine, but... The problem now is that there will be two
> copies of the source repo, one in each package. Is there some way that
> a recipe can
> inherit from both autotools and module and thus use two different S
> targets? Or is our current approach the only way to easily do this,
> and thus having two copies
> of the repo is just a side-effect that we simply need to accept?
> Splitting the source repo is almost out of the questions since they
> are heavily dependent on shared header files etc.
>=20

having two recipes is a good approach.  You can beat app and module
builds into same recipe but recipe becomes quite cluttered so its your =
priority
what you would prefer.=20

> Hans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


