Return-Path: <pxmyhdev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47D1FE00BEA; Tue, 20 Sep 2016 11:10:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pxmyhdev[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
Received: from mail-yb0-f182.google.com (mail-yb0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24A30E00B95
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 11:10:28 -0700 (PDT)
Received: by mail-yb0-f182.google.com with SMTP id u125so10898521ybg.3
	for <yocto@yoctoproject.org>; Tue, 20 Sep 2016 11:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=cMXsfmz/kCBYeII04W9yjCa5HSigyu+6UUW5w+/Ln7o=;
	b=gJ3AP4vYRQBaCIOad9furmkDmHZFwg51rm3wIlCzjIahe+0tXnWQ+XEht7UBWd6uDL
	kGEbTvR/FjWmvzSzva5tIwEvoa3qKA8MuzUQNmlT/KRINpc0tWNpiPQYGItz5TqjPB8y
	Awp8ZWw1fDzhGDqwgvdlj+6avtmNKBgf842d+kbTLNz4VasjA/CurAf+BNmEI9pZAtt5
	eg5NjCZrOuPgZqYg8JkAZaTjbxdl+u6yMzjp02NkuOWEwrumnEHTAdimQbDxT94pDYH1
	/9K1F0WxElb+lj1hl7b/YkFHg+Pb5F3fJJNrv6v+Jwf5rR6Nk0fL3yiUIvjzu7CK+Mw2
	AHtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=cMXsfmz/kCBYeII04W9yjCa5HSigyu+6UUW5w+/Ln7o=;
	b=QNW8JQ/Nx2kMFG4RabSXeyGuW+sNO8u3ZRCVEPwPkjsEyIwogQizFr8VBehBaYe8cP
	BGJ/x27bdmJuZE+AlOVS1dqJokajkZASEl2RJZGeiOAL2VdKrSsjDyzKy7EjnVkB7r7v
	IaW1SPf0dX6id4z4a8AL2jUpBizKk6fMV0xKJ/EJAajb6IV1ebcrgOqiGIqthDkBe3WX
	JibM5wdbZ3eQMPPlSqtXoVmlVXzaa6psj+WWiBcDd0y94ruRL3Oq2LoA9CjmFPwrJPuU
	mHr1bqNHPel+lQ19rYHgo44zRQkVy6tExibRZZ2kprajHz9pVIU9egubn1jjOOhzfFBf
	NCdw==
X-Gm-Message-State: AE9vXwMWnW6ZTwUQXqvtYlbeo3S5W9+CxkPhoJzo97X8bLMUEJ2nAQ4P0oOQYddC+iyMLb0KF4L5863xmvgp3w==
X-Received: by 10.37.212.148 with SMTP id m142mr30917071ybf.73.1474395028066; 
	Tue, 20 Sep 2016 11:10:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.71.132 with HTTP; Tue, 20 Sep 2016 11:10:27 -0700 (PDT)
From: Michael Hu <pxmyhdev@gmail.com>
Date: Tue, 20 Sep 2016 14:10:27 -0400
Message-ID: <CAPYQ8X7eYwnDQLSSMMkK22yRCP5Uwnf4grH9eQF=hM71PmSgiQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: fetch artifacts from Artifactory
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
X-List-Received-Date: Tue, 20 Sep 2016 18:10:30 -0000
Content-Type: multipart/alternative; boundary=94eb2c07f156e815cc053cf457a2

--94eb2c07f156e815cc053cf457a2
Content-Type: text/plain; charset=UTF-8

Hello,

I am trying to retrieve artifacts from Jfrog Artifactory, I put the https
url in the recipe:
SRC_URI = "https://artifactory.xx.com/<path to artifact>" and Yocto build
returns the following error
"
WARNING: do_fetch: Failed to fetch URL https://artifactory.xx.com/xx
;user=<usr>;pswd=<password>, attempting MIRRORS if available
ERROR: xx-1.0-r0 do_fetch: Fetcher failure: Fetch command failed with exit
code 6, output:
Authorization failed.
"

I tried to remove the 'user' and 'pswd' option, the same error returned.
What's the correct syntax for fetching artifacts?

Thanks for the help!

Michael

--94eb2c07f156e815cc053cf457a2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I am trying to retrieve artifact=
s from Jfrog Artifactory, I put the https url in the recipe:</div><div>SRC_=
URI =3D &quot;<a href=3D"https://artifactory.xx.com/">https://artifactory.x=
x.com/</a>&lt;path to artifact&gt;&quot; and Yocto build returns the follow=
ing error</div><div>&quot;</div><div><div>WARNING: do_fetch: Failed to fetc=
h URL <a href=3D"https://artifactory.xx.com/xx">https://artifactory.xx.com/=
xx</a> ;user=3D&lt;usr&gt;;pswd=3D&lt;password&gt;, attempting MIRRORS if a=
vailable</div><div>ERROR: xx-1.0-r0 do_fetch: Fetcher failure: Fetch comman=
d failed with exit code 6, output:</div><div>Authorization failed.</div></d=
iv><div>&quot;=C2=A0</div><div><br></div><div>I tried to remove the &#39;us=
er&#39; and &#39;pswd&#39; option, the same error returned.</div><div>What&=
#39;s the correct syntax for fetching artifacts?</div><div><br></div><div>T=
hanks for the help!</div><div><br></div><div>Michael</div></div>

--94eb2c07f156e815cc053cf457a2--
