Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 799AEE00D8F; Thu, 21 Apr 2016 12:24:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CC3EE00AAF
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:24:33 -0700 (PDT)
Received: by mail-wm0-f44.google.com with SMTP id u206so148177962wme.1
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 12:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=CQVbTHnf6RhEhbD2tQPK7dBVLABCZIn3GmZnjJSCrYg=;
	b=u63ZS4jyJava0LOsHz04CvMhc6gmHyr6aia3TjeKGKFUyPjapVS20VNwYrjtebu4/D
	i5dKTRsz+q+s4/08ZR4DQEoWlljAcLeO7F03JSAQo0JsOuKMi/+Weu4Q5KrkU3V1T+jt
	RsDWVXhA96VNfAOh+7TJ9oNlsVkN34JGjCeF/jB70MS3dprOJZjZbq3h5g0ZNGW9c0Rc
	drmaPX6Gl5LIGR1IZNsGfPLod4WTsQAYkojoBh7WnYyB6MJifabuPG9l1BUtINfDfz/9
	UTpn44XrMnKGnMeYcNhYHPdm4LaEetEiw2pzPMp0/0dwHjZeccMs1Rc1DppFxAKFOD2g
	nT/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=CQVbTHnf6RhEhbD2tQPK7dBVLABCZIn3GmZnjJSCrYg=;
	b=UFNadqVi7eTelkDTL0gNjeNGna12fGIym3wsyKfQXhltWleYJM7AbwESTZpJZ4wTJC
	FP5Tqv+oN9bbuQUiheT77wjlJhwHlgoOtgzD9h0wXfXauWfYtMy6ncUu1f6ori0FVRwx
	7iPnr+Hqun3GIPM2LeHrPlCTwiryIo/KUwjl6zyw5vm9Ce8SoQ4FRRN9j61UjYkIGAA/
	+8sPoxHT1aJLaDYpf3Ies0uQdgBzI/SDQgcJ4nwIyyIuU1OnL214dIyIwLVDEjfAb7Ku
	jX0FOLP7JI6XTfnGwaWRjDO0zTUNYJv3ylgv8ymJnTgslx3voETwXVRmxPIiIRGAcob0
	KE2w==
X-Gm-Message-State: AOPr4FUukpLbKN6p/jLCdwxEWh8TYrfGZ9SlaR79puafvQdwzv7vEvcnzBDqJZ4FkxhrzA==
X-Received: by 10.28.91.199 with SMTP id p190mr36998495wmb.47.1461266673166;
	Thu, 21 Apr 2016 12:24:33 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	k139sm4669043wmg.24.2016.04.21.12.24.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 21 Apr 2016 12:24:32 -0700 (PDT)
Date: Thu, 21 Apr 2016 21:24:30 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Theodor Gherzan <theodor@gherzan.ro>
Message-ID: <20160421192430.GC29750@resin>
References: <1461259933-1661-1-git-send-email-theodor@gherzan.ro>
	<1461259933-1661-2-git-send-email-theodor@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1461259933-1661-2-git-send-email-theodor@gherzan.ro>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/5] firmware.inc: Update firmware to include various serial fixes
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
X-List-Received-Date: Thu, 21 Apr 2016 19:24:39 -0000
X-Groupsio-MsgNum: 29566
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="XWOWbaMNXpFDWE00"
Content-Disposition: inline

--XWOWbaMNXpFDWE00
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 21, 2016 at 06:32:10PM +0100, Theodor Gherzan wrote:
> From: Theodor Gherzan <theodor@resin.io>
>
> Signed-off-by: Theodor Gherzan <theodor@resin.io>

Doesn't apply over over current master. Can you send a v2 without
Trevor's patch and with the updated one for README?

--
Andrei Gherzan

--XWOWbaMNXpFDWE00
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXGSjuAAoJEHO76Gt+erfPacQP/1tA+AWxWQ58/qSBNg2ZvfOM
Q5WLHwXdBIREZhr0xNPF4OfCXe2JM8jPbX/DavtSVVgHGo7GthyAi61QJK6VMLgJ
xq2GQj+WbE9DD5b9RU0LFwYlh88FJP67DMEHdOYhaLyqxwHcS+K9L3zPd1A37x8g
Yz7M7+mZxAst924qAYlZKD8FYfW5rxk8Xh4Ct05hjx8wWx9NXf6UXLD67Tgtmhmz
RbQK6bDgP6C5sdmG5dvWTA1BDqkpvr3xwNg1vlKt1hhJuHcgncrrvsgOsXTOt5KW
wLbDBpsWMTvoX1RXNTMU2YTcmD9uQQlLVwatwVHGbOKhu9gQ8FEgxJmVvtWEMaKO
K8j1rp9iia94JSr/782amPZRgq3ToKdOENrh1jvARfNuRjrgreqVA6ex8nMaYeGA
ScjO8XwJvPV2aR9vpwUkiHsnktIGTgvgolzWudHGFHWyE4m1UzGzQQqFJopkNZOm
21ACYFijagbp11YP62WsISwG6D2RpVEvpBpuo8Ka9PUcuxRhWmCMt11V18Zvwjv4
Gah3fpUWbZEJsUIh6QYFZhV3dzai+o+9u1lUUPhqO21dADW8gSRXPJxvR6OX9M6h
Dx76i9ROe/2TbMKqwF+vdWahqk4btnNNveczwhCQ0/eESQWlw8ajpL7cq+3YUKOR
B2z6jdMesS8q2VIfBfGj
=S4Bi
-----END PGP SIGNATURE-----

--XWOWbaMNXpFDWE00--
