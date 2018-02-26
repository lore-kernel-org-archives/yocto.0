Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F93BE00E49; Mon, 26 Feb 2018 10:28:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f174.google.com (mail-ot0-f174.google.com
	[74.125.82.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31609E00DD0
	for <yocto@yoctoproject.org>; Mon, 26 Feb 2018 10:28:42 -0800 (PST)
Received: by mail-ot0-f174.google.com with SMTP id f11so920431otj.12
	for <yocto@yoctoproject.org>; Mon, 26 Feb 2018 10:28:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=zrYIIaeZj7DsqvZ+1+QAPU+jX6L09ZUifpYhwuYIGjA=;
	b=hwtGSxO4cd+6IEYb3xBPC+gzKPyR90N76Vy06ja5LoZRtxCf5V6MIbcXvnDbu+7Pz4
	ZiHZsxmgeHo6FLH3KMfPUir/OhjlxjYSiaKdqpsxF53eTsCNjB6edygZx2/5KQUgqMna
	gSpFBfJv3roZ1zCK0MH9iiHLC/RuL0z/l1yrYqkG5JblH0J3bWMFAQSfft4rycH8HgsE
	gfgD7az4Ca6DcIii5dxy8tzoXqFhUMc8zB7iKbsAGrGQR9shfAu4r7fKO4/j4eq7ehkc
	IOCXsbN9EORzIXnLXAbydM02hX4fCo81CTAsiLlMnZXkayF5NRVXo9Yy9UyfVCXbletV
	aEZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=zrYIIaeZj7DsqvZ+1+QAPU+jX6L09ZUifpYhwuYIGjA=;
	b=Tgg0vgR9fZsQ2TCJ3Osyq/w96oyHxc7wGD8jIIKt5W3UypvW6qEZgzYWokbRNcEAch
	H6lRcC3LeTtv3HZr4hNBHRv83/uQELggP828lHgA4cQHoKTSb0V40EgPKpViLE+LEbVt
	dLlZ7X+I0AAuA9ObedrbMcTNxRBj51BEW9yh4kVkWQFOochINsmeH5O9r18jJL74/SiJ
	z1Lmud2so6mI+JC/sEtht0lR4hDRa0GjSNImlZ25lxY1nODhpx3lt7T6Y7C37zGqSCAU
	jueX4DUE3J2x4E3Ol6ak/Wmmems3JUasiiWyo0IAu0N+9YWa8CECG8VxDV+4VCph7/RO
	Y8rA==
X-Gm-Message-State: APf1xPDvgaUXuduR119sTz4a1ZDnUisPWdM75gI/xCreWuNhOWvPh+af
	BBt19AKy6HC+cDGkQN6a+orAHteM3aLdsI3TTLQ=
X-Google-Smtp-Source: AG47ELuNTA5/eDXqIbLBA6ORPZCOC3EaerZYTIc3vWB3r3aO4OkbA6cYK4UxzfyNnXHQmHhCf2FdycqXeS3JMI9RSf8=
X-Received: by 10.202.48.211 with SMTP id w202mr7009828oiw.29.1519669721890;
	Mon, 26 Feb 2018 10:28:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.55.199 with HTTP; Mon, 26 Feb 2018 10:28:41 -0800 (PST)
From: Jerry Lian <jerry.lian@gmail.com>
Date: Mon, 26 Feb 2018 13:28:41 -0500
Message-ID: <CAE0QtjN4MuB4zUDGuKiB5p0yYAJ81ey6r8vPq136c0wdeM9HJw@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: ksize.py not working?
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
X-List-Received-Date: Mon, 26 Feb 2018 18:28:43 -0000
Content-Type: multipart/alternative; boundary="001a113cde9ef3117a056621ad16"

--001a113cde9ef3117a056621ad16
Content-Type: text/plain; charset="UTF-8"

I want to check/analyze kernel image size, and I found:
* ksum.py works as expected!
* however, ksize.py produces results of "all zeros".

Anybody know the problem and how to fix it?

Thanks!
Jerry

--001a113cde9ef3117a056621ad16
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>I want to check/analyze kernel im=
age size, and I found:<br></div>* ksum.py works as expected!<br></div>* how=
ever, ksize.py produces results of &quot;all zeros&quot;.<br><br></div>Anyb=
ody know the problem and how to fix it?<br></div><br>Thanks! <br></div>Jerr=
y<br></div>

--001a113cde9ef3117a056621ad16--
