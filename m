Return-Path: <maniacbug@ymail.com>
Received: from nm10-vm4.bullet.mail.ne1.yahoo.com
	(nm10-vm4.bullet.mail.ne1.yahoo.com [98.138.91.170])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 6F673E006D9
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 11:50:50 -0700 (PDT)
Received: from [98.138.90.52] by nm10.bullet.mail.ne1.yahoo.com with NNFMP;
	28 Jun 2012 18:50:49 -0000
Received: from [98.138.89.249] by tm5.bullet.mail.ne1.yahoo.com with NNFMP;
	28 Jun 2012 18:50:49 -0000
Received: from [127.0.0.1] by omp1041.mail.ne1.yahoo.com with NNFMP;
	28 Jun 2012 18:50:49 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 666736.47398.bm@omp1041.mail.ne1.yahoo.com
Received: (qmail 4452 invoked by uid 60001); 28 Jun 2012 18:50:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ymail.com; s=s1024;
	t=1340909449; bh=5ekUhOIiXqZ0MrX/gq2XQH5/P/LBUcMfP7GrUaPi1yY=;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=Zt1vswL4g9yLCUvXZRLkFKGsykmGsxMfNnJLY7W3qh3vAEZ7qSoT9skdil0ADqjxIYNOV/CTzjlXXm+N8hpvRxhDNIpYoq2AR6LReEWDJPx6lTLJXVzfoxGKDM5fN5MWfwp+8vRQ+qUzJBaODGtNz91GSykYVFq3880kN0TQVAs=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=ymail.com;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:Cc:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=qeXJm5VPzbbzYMxEk4bk3mTAHnJit9reVQMz1l4KE81fYj0YL/of4twm3/V52sUcriiAe4hwMk1jOxkN6YJdd0pZvfPcqftmoxStS+SCIFYNnU9tPbCUKl8hgXCfdNJzgRETybjgWQ5fMsxmynB+C7vc3q1rAPDxZFNLGgQ7eVk=;
X-YMail-OSG: llTPUJMVM1laHn5mP.M7KlVVgcAN2MFnZD4yE02r92Hweea
	JUa6dYbAk5uFbptFuQ61yrknHVrXNzwROtYxo2HhsqvGQ3AzwN7mF3saGiDq
	4uRtgG4GESoBg4isaRrIsvIzAP5PlQOA9JrnKbAr5h1MDoU8bR8DWWOWkxaL
	HQnzMCxncJE_jGkTqcD7sSsxxhtfdHKQFtMdXeYxUhKkV1Bbq87wrcVLq5wE
	JWHKFdBsdGGJf68nmYGXKNnWvA1teTacCwtaB785acJFwwtlmpDtRzTS78a6
	3x1CVTzToPL0QsdhLq.8VxK8_OCm0JyIh2SChTW6Hg4VD4Yvn.KlWu8UT30v
	1nDpXVArY00hLV6LgK3sETPo7dzXuMLs_LChrKZicH3YPTo_MsA8gsK6HkDa
	f6sax.UsT6uvb3hIrxqas6_8Pw1K.N04Pbs.6
Received: from [131.107.0.119] by web121601.mail.ne1.yahoo.com via HTTP;
	Thu, 28 Jun 2012 11:50:49 PDT
X-Mailer: YahooMailWebService/0.8.118.349524
References: <1340763740.43451.YahooMailNeo@web121605.mail.ne1.yahoo.com>
	<4370319.CbK9Nk4c9m@helios>
Message-ID: <1340909449.2269.YahooMailNeo@web121601.mail.ne1.yahoo.com>
Date: Thu, 28 Jun 2012 11:50:49 -0700 (PDT)
From: maniacbug <maniacbug@ymail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <4370319.CbK9Nk4c9m@helios>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to include libstdc++ in an image?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: maniacbug <maniacbug@ymail.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Jun 2012 18:50:50 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

=0A>> Can anyone advise the appropriate way to inject libsdtc++ (and its=0A=
>> dependencies) into a poky image?=A0 Please note that I do not need to=0A=
>> compile/link apps on the target, only run them.=0A=0A> Adding libstdc++ =
to IMAGE_INSTALL should work - in fact I just tried it and it =0A> worked h=
ere (although I used the alternative of adding it to =0A> CORE_IMAGE_EXTRA_=
INSTALL in local.conf, but the result should be the same). =0A=0AThanks!=0A=
=A0=0ATurns out this was user error.=A0 libstdc++/libgcc were in fact inclu=
ded in the image, so it is correct that=A0 task-core-standalone-sdk-target =
did the job.=A0 I just had to remove the -dev packages to avoid balooning m=
y image, so now I have a minimal image with ssh and libstdc++ < 10M.=A0 Hap=
piness.=0A=A0=0AAlso handy to know that it works to just add package recipe=
s=A0directly to IMAGE_INSTALL.=A0 Still learning bitbake, so it's not clear=
 what goes there versus IMAGE_FEATURES, etc.

