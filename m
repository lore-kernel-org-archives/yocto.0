Return-Path: <romain145@gmail.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87103E00C76
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 11:36:33 -0700 (PDT)
Received: by mail-vc0-f172.google.com with SMTP id la4so3771801vcb.17
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 11:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Ltm+eDokBtzwiZMyNk3p++JFEuZz2ToEW1uNmTTO8JQ=;
	b=nd0Ue1TbndFtyXZh9mCSA0aBlTUlPP/f7/rqpdhShlwajypUwKP/ISD7i6qF8h3s9F
	X5sTn/nqYQLnamoacllN5uQZyHGD08llDMsbBq8hJ0q4woL8qb/dUXDVtx3smNm8JxdO
	JkLiVyiafqXJEme99iqK9ltEOJcjB1naNPy14O32CnAZKy/bGbW6UjEtK0RhAolO7tQ0
	KIGor+U4oYZHbYI8oY15pzGRh22kW8EZ8PlUfeMfphzWWAzr05FyystuWQ4b2Y3OXgLG
	T8XcpQqL0NqFcWikmS8TdH79rlV7L/pyqwAKR67lbdFJ1pElHPlEe8YLv5g2scuewc7R
	oR+Q==
X-Received: by 10.58.13.104 with SMTP id g8mr15324697vec.16.1397154992955;
	Thu, 10 Apr 2014 11:36:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.236.163 with HTTP; Thu, 10 Apr 2014 11:36:12 -0700 (PDT)
In-Reply-To: <4237672.0WqBQukXvJ@peggleto-mobl5.ger.corp.intel.com>
References: <CAKfC58sPYyCdKCLusG_gbu4B1fCie0PM6YFz+chdda61Sah7RA@mail.gmail.com>
	<2070676.utD6R3GvnO@peggleto-mobl5.ger.corp.intel.com>
	<CAKfC58tJSvWfPF0OZnBgawqw7+-7FOEzOikb=Qhwtz0vJFaTWQ@mail.gmail.com>
	<4237672.0WqBQukXvJ@peggleto-mobl5.ger.corp.intel.com>
From: Romain <romain145@gmail.com>
Date: Thu, 10 Apr 2014 19:36:12 +0100
Message-ID: <CAKfC58uJTPrHx_Wws1graobTvb3=5favPdZGJbWQ7GQHoPyBhQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: PREFERRED_PROVIDER entry in local.conf
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
X-List-Received-Date: Thu, 10 Apr 2014 18:36:34 -0000
Content-Type: multipart/alternative; boundary=047d7b2e73860d27b504f6b47fd3

--047d7b2e73860d27b504f6b47fd3
Content-Type: text/plain; charset=ISO-8859-1

Thanks for filing the bug.

I confirm that adding the line in my local.conf fix the jpeg provider :
PREFERRED_PROVIDER_jpeg = "libjpeg-turbo"

Thanks for your help !
Romain

--047d7b2e73860d27b504f6b47fd3
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">Thanks for filing the bug.<div><br></div><div>I confirm that adding the line in my local.conf fix the jpeg provider :</div><div>PREFERRED_PROVIDER_jpeg = &quot;libjpeg-turbo&quot;<br></div><div><br></div><div>

Thanks for your help !</div><div class="gmail_extra"><div>Romain</div></div></div>

--047d7b2e73860d27b504f6b47fd3--
