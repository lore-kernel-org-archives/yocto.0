Return-Path: <sidebranch.openembedded@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61E5BE002A8
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 02:08:18 -0700 (PDT)
Received: by lboj14 with SMTP id j14so246015lbo.35
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2012 02:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=CJ6VDfIdsE4hcFjZXFcm0j83Hbrb8LSottkFFShS6k4=;
	b=BamyJiIDO7PuXWCpnMyjzdp/3RZ3UwmolxWEaNZCWc3qbXNnE6ZU+2ZC/uItKn27O3
	uKY/MvM8D6+D7To/AAYeSFYzpWxT4miVx0inACCAZOi6h9XmFV/wwnps/u9CYJIwrkwM
	SGYHBeGVmFPg46bh3wRGOuvBAJDPwCEcVKczESm3L3AjOgKa4/wh4QkEfzS0An1CuPgt
	JyOoWved1+dfTMWPW5Ah8WQu1VEfinKSo36ssrQYFD/phEJlve2phqbFIYEpU/V6aeyq
	ABwxW16gZ8q1NzjRO+t+IhLGhP/XYRDMoK2uDLAprxGur5CMSE6PjjTZHumsnBncFsGL
	QR4g==
MIME-Version: 1.0
Received: by 10.152.148.169 with SMTP id tt9mr17328696lab.49.1343812097170;
	Wed, 01 Aug 2012 02:08:17 -0700 (PDT)
Received: by 10.112.37.225 with HTTP; Wed, 1 Aug 2012 02:08:17 -0700 (PDT)
In-Reply-To: <74172ECC-6F8E-46A7-9336-C3D92046107C@dominion.thruhere.net>
References: <1343766958-5092-1-git-send-email-sidebranch.openembedded@gmail.com>
	<74172ECC-6F8E-46A7-9336-C3D92046107C@dominion.thruhere.net>
Date: Wed, 1 Aug 2012 11:08:17 +0200
Message-ID: <CAMvUbCwZEiOQU=r5YYLtbbn7V1acgyYNN1i8ySJgRSSVSp8+mA@mail.gmail.com>
From: Leon Woestenberg <sidebranch.openembedded@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [for denzil] kernel.bbclass: Copy bounds.h only if it exists, needed for 2.6.x.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 Aug 2012 09:08:18 -0000
Content-Type: multipart/alternative; boundary=e89a8f23455db25bbc04c630a2af

--e89a8f23455db25bbc04c630a2af
Content-Type: text/plain; charset=ISO-8859-1

Hello Koen,

On 08/01/2012 08:55 AM, Koen Kooi wrote:

Shouldn't this be sent to the oe-core list?!?!?

It was intended for the denzil branch ([for denzil]) of Yocto, that's why I
sent it to yocto@yoctoproject.org.

If that was wrong reasoning, let me know, I would be glad to change
workflow if I know why.

Cheers,

Leon.

--e89a8f23455db25bbc04c630a2af
Content-Type: text/html; charset=ISO-8859-1

Hello Koen,
<br>
<br>On 08/01/2012 08:55 AM, Koen Kooi wrote:
<br><blockquote type="cite" style="color:#000000">Shouldn&#39;t this be sent to the oe-core list?!?!?
<br>
<br></blockquote>It was intended for the denzil branch ([for denzil]) of Yocto, that&#39;s 
why I sent it to <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>.
<br>
<br>If that was wrong reasoning, let me know, I would be glad to change 
workflow if I know why.
<br>
<br>Cheers,
<br>
<br>Leon.
<br>

--e89a8f23455db25bbc04c630a2af--
