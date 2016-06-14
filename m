Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0706AE00C1F; Tue, 14 Jun 2016 09:49:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8454FE00BFF
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 09:48:58 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id m124so131570100wme.1
	for <yocto@yoctoproject.org>; Tue, 14 Jun 2016 09:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=HFc9xVsiuk4g1hxQX3ELrIKD9HLG/uLcAHcCLt+81JA=;
	b=k/xAeeMIc+BeFPPvoMXMXxkz+LOHidci/w7hmwkr3tiBocx4C9xWcl0kYYpDE2Y6co
	7oWCvDRzm/hdHjA+/+NONR6UDGVQqLUrYRP3a+PRBtvzJMShmMjIscLIn7oFDqftzi84
	PCY9KYu1ozbfqYj+hAVsL5gTuvAGWdP1UziEyJQunkr/zeRq+moa2dZMguKPkW1nSlAj
	NxitV6kqhnXdAfT9JfmBJubCtJA2uEJ+5dTTmLde6kQDAInOauLd5haM+gH6aZvTiWFh
	h4/IiEyJdkNLpbDJZ/wZuf94NJuade5JX+YwUIkntu2etpaKOq4q4DLhiEV7ZhCK5xkx
	IzWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=HFc9xVsiuk4g1hxQX3ELrIKD9HLG/uLcAHcCLt+81JA=;
	b=bQ/UQlajg5kJMW0Kyhxyl70dOsk53IEoScLIGmrph3jC0xnf/BKWuW+7qEDAYTx+b3
	IoiDXBo35xOjaPRemDq2Qzf+Nq8aaFyZb62cy/U5pq6vYrQUJx1agGLvAQY0kvXuvRNx
	TLHOgfOcRSgoledTN+QrMH1i8Zz2JVbaKMYbeQ2xBYce74KOD6NhkOs1ibRUIlUWTdax
	y0bY99i/gN4G8KKvz9Oo+adTbvjqSNVvZSM8G92vGRC9kNWPYJz+gi4rhNS2y3PpinBK
	KzVC34oZtUXk1DdsGlD9jezntUHGhfqSyyet39Y55SuHX0eItA0pVJ5cqZ7tB1I4Cpq7
	JtSQ==
X-Gm-Message-State: ALyK8tJtfiKmv+ZJUk3AwR1GxydsfQ8Us9dTWG54UkFklk+bYFPUSpwv9ZQA8ZN9ILEkNg==
X-Received: by 10.194.172.102 with SMTP id bb6mr7851826wjc.151.1465922937267; 
	Tue, 14 Jun 2016 09:48:57 -0700 (PDT)
Received: from resin.lan (179.154.125.91.dyn.plus.net. [91.125.154.179])
	by smtp.gmail.com with ESMTPSA id ej9sm77891wjd.7.2016.06.14.09.48.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Jun 2016 09:48:56 -0700 (PDT)
Date: Tue, 14 Jun 2016 17:48:50 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160614164850.GA12722@resin.lan>
References: <20160607145713.27597-1-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20160607145713.27597-1-net147@gmail.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] omxplayer: fix compilation with GCC 6
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
X-List-Received-Date: Tue, 14 Jun 2016 16:49:03 -0000
X-Groupsio-MsgNum: 30515
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="SLDf9lqlvOQaIe6s"
Content-Disposition: inline

--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Jun 08, 2016 at 12:57:13AM +1000, Jonathan Liu wrote:
> Specifying -isystem${STAGING_DIR_HOST}/usr/include in INCLUDES gives:
>
>     In file included from utils/PCMRemap.cpp:26:0:
>     .../build/tmp/sysroots/raspberrypi2/usr/include/c++/6.1.1/cstdlib:75:25: fatal error: stdlib.h: No such file or directory
>      #include_next <stdlib.h>
>                              ^
>     compilation terminated.
>     Makefile:44: recipe for target 'utils/PCMRemap.o' failed
>
> To resolve this, /usr/include shouldn't be specified as it is already a
> default include path relative to the sysroot.
>
> See https://gcc.gnu.org/bugzilla/show_bug.cgi?id=70129.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>

Pushed to master. Thanks.

--
Andrei Gherzan

--SLDf9lqlvOQaIe6s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXYDVyAAoJEHO76Gt+erfPUMUQAMODmWkwKgwMMyXujMwC29xo
rAhe3c4yB2SnkYsH88Ejk35M3YVvRh8idVmo/7wAgVY5a3zCd1SXtAuevCZyypBF
zT5KO+vIvrS1VchGBVwXgaBv8CM7lqYTKvAm9AxXfEbWz4IKzUkyL0s1jLkHG9Jg
JSfHm69PC77h93JqDD/+ifoVvqyzaDs6Ks3hfJ4N/hCl5Wn47ShS72A0V4qDo8yP
+nrEgJ8XHNtFfU9kCvJiqUoE3C1wilQKX350B/eVKhQaMZqMxAhvaiCw1BJ3Djik
JBjEIZ2AoJnwAUKVJVfPix6mHzQKz1diF2yNkYOVlMO0CcbcWRr2iXTcwH9GjzNs
QhnyTY+s6UdStnhrZQf4gR3mbBFkovV7KWV6qTOK2s5ZNAxQzjzQGFsUs6BDB9xM
BaGxHZSstSlsk7lNXD/zP5hI2twpuG9gDQXo570XzVTy8TWh7nA2tWCYBZWdVYbL
zsTMZncamgHFYT5nLMxyxogOTsdFRlv2qBGFxqcvrbV1c3lZO9VDh87UN6zZLsUO
KQqhWV+nbj87Xh9C3xO8jjDpS0nfCn9mkSWLzyZsS73r0u3TL+waQhECDp7hIIUa
t/PfMQ6VZEwtpOD3GKbPKsYu5ZqnYf32iKew8XV9PyilhcFR0HUd3KvxkT+Zj48o
ZxxOZl6DHOAr+NkbF6CH
=Hg/4
-----END PGP SIGNATURE-----

--SLDf9lqlvOQaIe6s--
