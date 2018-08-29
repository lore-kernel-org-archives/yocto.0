Return-Path: <bryan.fishell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78A29E0090C; Tue, 28 Aug 2018 17:47:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bryan.fishell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15189E00718
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 17:47:05 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id y207-v6so6154039oie.13
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 17:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=55tM8fr8ScAjOEy1pgY7tzgwposaW0u2swC0pSFyb5s=;
	b=HeczauXQ90EYOU8owbe7O9TAxdWnCs8yZuy2dOZmTcIcdnmjDOFJGh3rdLXyzK2bKR
	gSm3dZa6hr0glpN29GQ0A+j/lT258j/itqowBz+DMl47NeLZTnXeREFUATopZVNlhSys
	8USdebdwpSQJpCRb5lsOxXLlfK8Mqw+j5sq5KIHO1MRJWyFbvzM9hglC5NVAaNjPHgRI
	iujVuB2PTbqEbZMDcgOrD/xy/kwPazl0QL68k5eQ11BL6mlsneUAWhHP7nPuOB3/S8fA
	T1Pzktq/l/3pQ1Nypg5MaG8Sp3O+FHbS4kgo4t1tfcnvGXV6Kt1bE0rKWhf93JqwobM+
	9XvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=55tM8fr8ScAjOEy1pgY7tzgwposaW0u2swC0pSFyb5s=;
	b=auDcyTpESdR7MKTMcJRcWUrZuLP3kAjiT/EnooJt8cBRJURl6os2TSfY8AaMczCvZ6
	0SJF9HOPzmqw3NWs3DuuPC7u2iTMF7ufG1+1+SjwcLIuvHZCPUeOWNtF6tTUt/Lz71xb
	iQMcj2bJXJFzzFGS2wWlyRtVh/E6Kb+w8V3Oy+W+pr1gniF2Q8YDHdXkKyEzutjqvbdR
	so2SzO+Al6FQxX3ANqPsHr2VY3en27HTzI4GNnNM35SwMfmc7ADhOVTL5Fg6yS6+ZsHm
	/N6hJ4xa34flaMBb2+4SWnOr8u8SbgelqdOibiaA07hVQmSREHCrKtw/7jFM32mHjGRO
	3c+A==
X-Gm-Message-State: APzg51BlfuPybPgs+eKXsUZLxUS898dbkceh5Ddp02TSEEobvT0v2YZR
	Qz+SjeMEeZ13IkVu1eg7u67Ku4cuAlrhhv/o//nHNQ==
X-Google-Smtp-Source: ANB0Vdao3DWjrkYyyAfDWC+Vfv5HPtk9Phm+0OUigiXiZ3iLxg7WCOGw29lW7HT2hPE43IWZ++3br/K7vW8i+v8jNG4=
X-Received: by 2002:aca:2808:: with SMTP id 8-v6mr486046oix.7.1535503625217;
	Tue, 28 Aug 2018 17:47:05 -0700 (PDT)
MIME-Version: 1.0
From: Bryan Fishell <bryan.fishell@gmail.com>
Date: Tue, 28 Aug 2018 20:46:21 -0400
Message-ID: <CAPC-RGnevp9F7+38rDCNpuTMg-zHnO_KQHHd_8ro7WK1t25MRw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Morty (2.2.1) Build Verification
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
X-List-Received-Date: Wed, 29 Aug 2018 00:47:06 -0000
Content-Type: multipart/alternative; boundary="00000000000021ea9a0574884c98"

--00000000000021ea9a0574884c98
Content-Type: text/plain; charset="UTF-8"

Hi,

I've read that some of the ongoing initiatives of the Yocto project is to
strive towards binary reproducible builds.

I am using a test project with Morty (2.2.1). My custom BSP layer are
currently local files.Ultimately I would like to:
1. Know a method of how I can verify my build on two different hosts
2. Is there a way I can append this verification method (hashes of SRCREV
or something) into the os-release recipe so with whatever build
verification (correlating build-metadata into the image so I can correspond
it to version control to see what changed?)

Thanks in advance

--00000000000021ea9a0574884c98
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>I&#39;ve read that some of th=
e ongoing initiatives of the Yocto project is to strive towards binary repr=
oducible builds.=C2=A0</div><div><br></div><div>I am using a test project w=
ith Morty (2.2.1). My custom BSP layer are currently local files.Ultimately=
 I would like to:</div><div>1. Know a method of how I can verify my build o=
n two different hosts</div><div>2. Is there a way I can append this verific=
ation method (hashes of SRCREV or something) into the os-release recipe so =
with whatever build verification (correlating build-metadata into the image=
 so I can correspond it to version control to see what changed?)</div><div>=
<br></div><div>Thanks in advance</div></div>

--00000000000021ea9a0574884c98--
