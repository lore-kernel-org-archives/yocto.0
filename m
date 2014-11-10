Return-Path: <opensourcejohn2112@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 479EFE008B4; Mon, 10 Nov 2014 15:58:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (opensourcejohn2112[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1879E007C0
	for <yocto@yoctoproject.org>; Mon, 10 Nov 2014 15:58:29 -0800 (PST)
Received: by mail-oi0-f54.google.com with SMTP id a141so6318844oig.27
	for <yocto@yoctoproject.org>; Mon, 10 Nov 2014 15:58:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=LavO+/SJHUyMLK/rOHju4/NtEdAOobfYJ8W59rm4U1I=;
	b=unCoMsShnYi1LaF7hl5zSQyJNzmxQ7CFRIvahMX3pGSTtyvBirdbNJY8XivKq6AEdC
	Q8Fa+w3ZUJALDPRH/dlI6MhPzdoMfzS1UUxJI0Hyu5QrYK34Q60B4XIqAsVD+T1ZUiPD
	EbqARsC7Hb/Yu+a2H4LzLtJDg/+vWSD7npzcVEA5UjoqdoT0LtHr1AaQ2EWfsrGZUKKy
	ltc8v1PVL84azo8d1iYanMpPxqY5cy8mxH7D97KBIxnZ7tk9TqqL9FtlKz1KZafswkOe
	BLH6NKjF2bFbbboxXGtfEsAEG8Xp22CySgkE8RIHnKA5YNTMduyGxbcE7kN0MLTLFO3W
	HZ6Q==
MIME-Version: 1.0
X-Received: by 10.202.227.73 with SMTP id a70mr4798135oih.59.1415663909057;
	Mon, 10 Nov 2014 15:58:29 -0800 (PST)
Received: by 10.202.104.196 with HTTP; Mon, 10 Nov 2014 15:58:28 -0800 (PST)
Date: Mon, 10 Nov 2014 17:58:28 -0600
Message-ID: <CAByxTR_jmYDr4QUAtXg20UBV_FXZ-yUk=WEJ3LTA1wkaRAx6Yw@mail.gmail.com>
From: John Unland <opensourcejohn2112@gmail.com>
To: yocto@yoctoproject.org
Subject: Making Hob better.
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
X-List-Received-Date: Mon, 10 Nov 2014 23:58:35 -0000
Content-Type: text/plain; charset=UTF-8

Hello everyone,

I am new to the embedded space, been working with embedded for a
couple of months now as well as Linux itself. After much time spent
with Hob I have to say it's a awesome tool to use. However I would
like it to be better than it already is, I see the potential of this
interface to help newbies like myself, weather it be hobbyist or
industrial use. So below is what I have found through my fiddling
around with Hob.


-Some interface inconsistencies when your selecting layers, image
type, distro type etc.

-Image deployments (Only .hddimg and .iso can be deployed to physical
media at the end (To my knowledge) of the build process. There's is a
lot of FS types, but I would really like to have a steps on how to
install these other FS types which documentation nor simply goggling
it helps)

-Branding. There are ways to go and edit files to specify how to
rebrand and stuff but that requires a command line. I would like to
have the simple screen where I can add branding (Boot screens, Logos,
and distro names etc.). I could definitely if Hob does have a Web User
interface where I can't access a command line to change parameters of
the finished product.

-Documentation is awesome, however from a person that has only a year
and a half experience using Linux it's kinda hard reading it
sometimes. (Not really anything bad on Yocto's part. I would just like
to input something that newbies can be represented in this project)

I really could see Hob become a open source version of openSUSE Studio
(Which it's closed source) but for embedded devices. So that's just my
hopes for Hob / Yocto could become...

Lastly, I would really love to help with development as well. I
haven't really gotten into programming that much but I have worked
with the Fedora Server Special Interest Group doing QA for Alpha and
Beta release. So if anyone can put me in the right direction I can
certainly help YP out.

Thank you.

