Return-Path: <sara.sinback@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6369EE0055C; Fri,  6 Jan 2017 13:42:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sara.sinback[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97B53E00524
	for <yocto@yoctoproject.org>; Fri,  6 Jan 2017 13:42:02 -0800 (PST)
Received: by mail-io0-f169.google.com with SMTP id f103so44245568ioi.1
	for <yocto@yoctoproject.org>; Fri, 06 Jan 2017 13:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=z8LlT3MNPSur/TP+v8+Iqa7CFjeKiD3RlZoIMZq0Fls=;
	b=pJO7T/WgTFJ4WXmDVpTyUz+1o/bju4osiZlq8SjHV9W29Dn9JcLh+VH9ryT/Uv26NZ
	pshgbRWcp7NpIj76iORla3Zm4zHBYnxZImNbmtb/QVXLJtv3IMmqanQxnk4nCCaI7p4V
	T2AJYQxyGr0X3G56/E6aREyb/MVKdSxbubIAG9QN5h7BLAuVtGP+0HRExfHgmljocqUg
	omIaYwSebU+Zu/EUdYC7NKHPXoZdyaPeJzpI+IK3kBQxdD+eSsKnjLsHnRXHhhfJvsNH
	FFKGGBewVuvCLpN+ZAKHv9YXZAq6rSclVFEA1PRk2qguzYUBd8JtDFf17lBDV9NMNGrm
	zzpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=z8LlT3MNPSur/TP+v8+Iqa7CFjeKiD3RlZoIMZq0Fls=;
	b=D8vPuWdbvbqPdkGBhLE33jiPZqHxg7CY7o5umZ8HKU0AapcTl+U065d8ZCu8f9/2Gp
	wuX8HzyF3jYNrhzd8ObYmeAsTJT1XzuPI1OxhPVtSPipR6g5K/rX70B4IwPI19tfi6Sx
	D7xKfVywL1hoiGZFQzvMkw1O70hKcsvN7n1G0Z981igwwCnySksx6PAxVgZYn+ZH0uc0
	Q3FQtR4jY6FRYtRozAFw/f0jwnenSbjDT6Mjti1QbkYMnk39Sr8ULkpoWXQEGuJod2Ij
	H0qzLlulwdOetGiToOrK95wTkgr8ZZSBStzo/mc983CDy6EoB/foFi/Xmj4AsoMsmEkb
	yyBw==
X-Gm-Message-State: AIkVDXLzFrVxWW0pTe/k93nm/fiTyASmFfi9kAoV4omYz9nsVlpD8mn5GRFW+pYPUAgMe2ZZtC3TSPh+VCSBgQ==
X-Received: by 10.107.8.194 with SMTP id h63mr14845135ioi.70.1483738922177;
	Fri, 06 Jan 2017 13:42:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.1.36 with HTTP; Fri, 6 Jan 2017 13:41:41 -0800 (PST)
From: Sara Sinback <sara.sinback@gmail.com>
Date: Fri, 6 Jan 2017 16:41:41 -0500
Message-ID: <CADhwbq-BFkrr9e15bUECLgoVqTXHQD00_DzR1uz24FC8e100Cw@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 09 Jan 2017 07:33:33 -0800
Subject: non-zero exit code after ultimately successful build
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
X-List-Received-Date: Fri, 06 Jan 2017 21:42:45 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

This is my first post to this list, so my apologies if I have not
conformed in some way to the posting etiquette.

I'm managing on a CI server that starts many morty builds which use
the setscene state cache to do incremental builds where possible. I
have a problem which can be broken down into two parts: Currently, I'm
encountering a bug which seems to be limited only to the setscene
world. I see it on six setscene tasks out of hundreds. After each
failed setscene tasks, the "real task" is run instead, successfully.
That is, the build itself succeeds. Here's
a pastebin with the error and the setscene tasks that it happens in,
in case you'd like to peruse that. http://pastebin.com/R93JxF7b

Apparently, somebody has actually fixed this problem already, but it
seems the fix has not yet been merged into morty. Here's the
discussion where Ross mentioned fixing it.
https://www.mail-archive.com/search?l=yocto@yoctoproject.org&q=subject:%22Re%5C%3A+%5C%5Byocto%5C%5D+populate_sdk_ext%5C%3A+Unable+to+locate+package+nativesdk%5C-buildtools%5C-perl%5C-dummy%22&o=newest&f=1
I haven't had time to look into the fix yet myself. So maybe nobody
needs to do a lot of work about this part of the problem right now,
except maybe merge in the fix Ross mentioned.

Here's the second part of the problem, which is more relevant to me personally:

Because of the error messages generated by setscene (which the build
recovers from by itself), my bitbake command returns an exit code of 1
even though the build has ultimately succeeded. This is very
frustrating for me, because each of these tasks is being run
autonomously by a CI server, which has no clean way of telling that
the bitbake actually succeeded!

In my view, this is a non-desirable behavior for bitbake. Can you help
me find a workaround for this? I googled a bunch and looked in the
docs for a way to suppress setscene errors that the build process
recovers from, but after a few hours of investigating, I have yet to
find a clean workaround.

If there isn't a way to keep bitbake from having a non-zero return
code because of setscene failures the build works around, might I
suggest we return a special return code in that case? That way, it
would be easier to configure my CI server to know that "nothing is
really wrong" and continue with its other steps, which depend on this
build, unhindered. This would make my life a lot easier!

Thanks for any help!
Sara Sinback

