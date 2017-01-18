Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AC8BE009F8; Wed, 18 Jan 2017 08:04:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2272E00A6D
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 08:04:22 -0800 (PST)
Received: by mail-wm0-f68.google.com with SMTP id r126so5067699wmr.3
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 08:04:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=WmEQv0SXBF9ECWd4DDe9SpqXeH0y4wnj4GOpO1vJzgo=;
	b=yzIfnsmlAwzmAkpRDnRLywnxs9j3VQ8olwWqczrDmD4uTA5Z1YUB97ZL4ht4tB6np8
	d6O3ZK+Fe6enbuSciADWV3KysftYeNk8N3nLi+XbsaT6BgRAqZStNLShzn5DrtaRhohW
	/6ZSrtmCmGx56G+32hIii3rw/gTGgifEUtz7KXdJyHBO96s2HfiRzB/lQWo3X+pdz5DF
	69liWUP17p1YjtQVJm1mUR1ekYQNF4h/GmDIvVFxJNsyCMEEVuFiQuLdt+Gi9pWaVDAm
	wj979sFPeP8u2tgW2Cu0IiynxZDoiUzpJGk2Wu9GNwCHSTOlvh8gOaG1A5aVQzgGTmQq
	sV9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=WmEQv0SXBF9ECWd4DDe9SpqXeH0y4wnj4GOpO1vJzgo=;
	b=U3uWj/2AQIKgHo9CJiQZ5K5m/lkSfVMMV8i5w/2ang4j3Btw3nsjJJTmtKnrTVYCqt
	EyTiP+FLBBI0KjHA3nONfEzIVqpbQLnMJOr9Ag5UVGORdng8ye4C4/V0FsOJIgAsx33y
	0GgkSt9BoResa0IosqK+tT0c+8Jss6d/m4L3jSn4pErBM6usKPRJzY4aktSJtFrFwmLQ
	m/ZW7ywPQ76NExgAPcs7F7kYCwCFyLeelo126PtYWi8KtD7329RyxVXelpktEd/kYX+E
	GkVqAxwWCGkzCwmnsL68cTmab+5f1cTzJHzfB+rGVAW77jf6o6uktLSZ6sutiQAEf3P7
	VbtA==
X-Gm-Message-State: AIkVDXKNJShl4/1NqF6HY95kcwpG2wIGRfbe6GVjzcn/ZDr6wtMpufLkLL0+HFv8lREsAA==
X-Received: by 10.223.153.15 with SMTP id x15mr3449526wrb.179.1484755461550;
	Wed, 18 Jan 2017 08:04:21 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118])
	by smtp.gmail.com with ESMTPSA id g75sm5840506wme.5.2017.01.18.08.04.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Jan 2017 08:04:20 -0800 (PST)
Date: Wed, 18 Jan 2017 16:04:16 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20170118160352.GA14533@carbonA>
References: <1483363213-27822-1-git-send-email-paul@paulbarker.me.uk>
MIME-Version: 1.0
In-Reply-To: <1483363213-27822-1-git-send-email-paul@paulbarker.me.uk>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 0/3] Kernel update and getVar cleanup
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
X-List-Received-Date: Wed, 18 Jan 2017 16:04:36 -0000
X-Groupsio-MsgNum: 33909
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bAmEntskrkuBymla"
Content-Disposition: inline

--bAmEntskrkuBymla
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 02, 2017 at 01:20:10PM +0000, Paul Barker wrote:
> These patches have been boot tested for both raspberrypi and raspberrypi3.
>
> The first patch in the series probably breaks things for the morty branch. I'm
> also proposing we drop support for linux-raspberrypi v4.1 as it's currently
> broken on master. We should create a morty branch for meta-raspberrypi before
> applying these patches.
>
> Any objections to dropping linux-raspberrypi v4.1 or making a morty branch at
> this point?
>

Created a morty branch and merged these patches in master. Thank you.
--
Andrei Gherzan

--bAmEntskrkuBymla
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEQvNqws+Dz7aX1cEEc7voa356t88FAlh/kf8ACgkQc7voa356
t8+CWQ//ec6s74bOk0UuzpEx1Fg4MUSAtQ800L1d9mb6LM0UCqc35c/iPMkBvZZz
+R3MMeWWYfmVM8Cc8VyZ5zdIdoPVrZnFyv0rya7qFjRpo9uvwkE7t1XTC9OjWsAf
dJjOW0XV6WFfnFboDTh9StnnmLRiQ+74jEPN9ZUZJK8svmXLT9Vmx24B3gnvXLpH
VoUeINgO18rSRFk3rDo7PJV4BMMF8bc9Fn7P1h15/+6lkk5yprUTjAGVwXugLGik
XVdo56TjpBaCVy050GJRpWqTTsaHZBWY2pnhf5Y9NZtz2GL19e7ayJydpe0/O7eg
3/le5wTvL6pEoLD7AVHo+8hJ4hXVsh5RiQP6Ww19O1sb5wbF3WECpVjyhqc4ZU5B
Lw0AfnvxTKs/rUgZQ3lpw3tXOKR8t8s44hRx8twdWGTtHU7zoampg6oxbVwJ+FnT
z4lYlWJfPU3uXOYLzUOu+9J3ruNSgq1Cy1fqOAyzZJlzgXNBY360cBg3Fp5pR3z0
W4Dc0OGFM7flAj6/l5i/wUho+ArpOljQettwOe/r67hh7GCMbOP3X3Fq7Z6908Bz
/K7N0AHyju4fblB98XEDnf1CcL5sgO6tVeFeEzz6/A8KM0r9/u7r6eC54Wfus/SV
8FydM0va87UxR+81HJrylTkBX1bilheiMtjPUe5qI90PCdQNzVY=
=CIu7
-----END PGP SIGNATURE-----

--bAmEntskrkuBymla--
