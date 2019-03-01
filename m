Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EA98E009A0; Fri,  1 Mar 2019 11:43:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ricardo.ribalda[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
	[209.85.167.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4847CE0095C
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2019 11:43:10 -0800 (PST)
Received: by mail-lf1-f52.google.com with SMTP id z196so18165630lff.4
	for <yocto@yoctoproject.org>; Fri, 01 Mar 2019 11:43:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=QiVydUK0lexkvctSXAfDLI4gGQN7Lzt/XaQkJUo57aI=;
	b=OMbEyu8ZPZz60I5VfRBnvzZDKb8nZNzq4Y35M3ZXQdgsf/iK0rvLN3Zh5ifV35srYo
	oMvul7amE/bfxMlZRoK+WcNo9wfPXzjUwGCp4CauRivC40HDhijMf3FaK2a261yaAM0W
	6SVyVXSElpg01QL2bTvBAPxPHJf144PhdpcO2cG5mXBjoJHFoaqizlQnIKxBAlNh3pbn
	l33+InTvJmhVQT5LbLQ+VQHeMm1e9+IURZG8U+Y3nXRy9AJRoGcpUy1r17moICyUcJEQ
	gH6ZHgHTAiWel/X/XpmdAWPDZA73BSm/Zh2bssmp2xbdXtspwvnGLAOt4t8zykJPwntr
	XEcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=QiVydUK0lexkvctSXAfDLI4gGQN7Lzt/XaQkJUo57aI=;
	b=Kpdh6fJDNvWl+UlQXcn6PcmG01W+eqrlTErV+2SgA8MMuiciX17sdNbYIsN0flHDl+
	x/FL3XguKkfeScFmgSVq1+wGjlsr5lorExWCjaPFxF8gtb6r1+bzCHnlKtBA/gUYpT+L
	xpX8wQG+RxTgeYdop6BXaOh8lcUNBCg+wYN2Otdov85vfi9ZIwL9rsLX/VliL7OneTCA
	NYzrVomCLb8lsWROTjgBEMF6KMIndEktKs4hjz6FQHYH7X3+wiiXfqgJpVbHAefLIv7c
	WuBqsHgGYw0WvqrHYjfGcdY77JNICq4GHBdh5UJshjMzyh1wDQK1sKghkWHtfEdBocpn
	o40Q==
X-Gm-Message-State: APjAAAXWDkPmJvFejIApM177mSmPaoA8s8voqmg/ndCjoNY2l3zfbJjp
	183bqwDDnBe4p1m6db2ZYbeJq8SxKOJaqx0AO38=
X-Google-Smtp-Source: APXvYqz4dxI+ijkNQL4hdHb6H+XjryeEzJgEdUezMGIFlt+5dUjnX0nnW4AJgopIfHROrk+nucwO86dEpdSJIwmhORY=
X-Received: by 2002:ac2:4191:: with SMTP id z17mr3963629lfh.78.1551469389192; 
	Fri, 01 Mar 2019 11:43:09 -0800 (PST)
MIME-Version: 1.0
References: <accf0c0a-77f8-e86c-c0ed-3af8d5a48e3b@balister.org>
	<CAFNP8OtVN5tjv3xV57q+kjiewtH24tdm3HCqHL+dMKayNcKaMg@mail.gmail.com>
In-Reply-To: <CAFNP8OtVN5tjv3xV57q+kjiewtH24tdm3HCqHL+dMKayNcKaMg@mail.gmail.com>
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Date: Fri, 1 Mar 2019 20:42:52 +0100
Message-ID: <CAPybu_1WtS2o=E6rpZzJMvpW6RQzPFxy29XGno=ok7bsTpW6XQ@mail.gmail.com>
To: Scott Rifenbark <srifenbark@gmail.com>
Cc: openembedded-core <openembedded-core@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: [OE-core] Information about non-traditional uses of the Yocto Project and OpenEmbedded
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
X-List-Received-Date: Fri, 01 Mar 2019 19:43:11 -0000
Content-Type: text/plain; charset="UTF-8"

Hi

We (qtec.com) use yocto/oe to build industrial vision systems.

Today is running on Potato graders, Carrot Graders, Potato 3d cameras,
Hyperspectral cameras, Beer analysers, Checkweighers, Screw Counters,
Hockey streamers....

Let me know if you think this is interesting and I can share more detailed info.


On Wed, Feb 27, 2019 at 9:16 PM Scott Rifenbark <srifenbark@gmail.com> wrote:
>
> Sounds like good potential for a section or chapter in the user docs.
>
> Scott
>
> On Wed, Feb 27, 2019 at 12:01 PM Philip Balister <philip@balister.org> wrote:
>>
>> During the last OpenEmbedded developer meeting, it became clear that
>> people are using the Yocto project/OpenEmbedded in spaces outside what
>> we think of as traditional embedded. Lieu Ta is working on a
>> presentation for the Linux Foundation Leadership Summit and we would
>> like to collect as many "unusual" applications are possible from
>> companies we can publicly acknowledge. Unusual is edge, containers,
>> desktop, etc. Or even really interesting embedded applications :)
>>
>> Please drop me an email (off list is fine) with enough info for us to
>> add you to a slide and acknowledge your work.
>>
>> Thanks,
>>
>> Philip
>> --
>> _______________________________________________
>> Openembedded-core mailing list
>> Openembedded-core@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core



-- 
Ricardo Ribalda

