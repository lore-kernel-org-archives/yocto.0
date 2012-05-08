Return-Path: <autif.mlist@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74509E0044A
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 15:40:12 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so11438580pbb.35
	for <yocto@yoctoproject.org>; Tue, 08 May 2012 15:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=fCAawN8Vq50CY73AYjMsB6v3m4Ns1dyLv5v2R32nWgM=;
	b=KUT0zbLvjMFS53gAPiQHDS3Z8Rn5Tzh0EcfMqokyXXtscWufgh6P0BUhYFuS1ekyc8
	BQnTWXdASx05CSGJ7wlbv3lqZ/Aw8g8ykm6umavMhMEHB5IfL7LB8UGzHpagNFz41wuD
	1nIGs+slV5+vqknAOa5kFCWjBoyV402XD3KfYH9G3NrL+ULp5jFLR1q9mwAtF+K1B0a9
	FpsizkFgL98vvOADuJYsPCeX60/WzPmjvLOUPIJHcoxsrpdSYj5PqVePs+RIgS/NVKQV
	g2VUneqltVQI11kcgbY3D/AKYjznxIyFo23kmHhOBNoxcw+MSKRXKxbfyMweNzgjyZyk
	4Cig==
MIME-Version: 1.0
Received: by 10.68.223.231 with SMTP id qx7mr2052591pbc.134.1336516812233;
	Tue, 08 May 2012 15:40:12 -0700 (PDT)
Received: by 10.68.14.166 with HTTP; Tue, 8 May 2012 15:40:12 -0700 (PDT)
In-Reply-To: <4FA971E3.70904@windriver.com>
References: <CACW_hTacgFqj2NQZ4aNuN5WBm2R9Ge3NS25XVJTKjmKm6spHKw@mail.gmail.com>
	<4FA7E0DB.7050508@windriver.com>
	<CACW_hTZj8W-eS0+3GzELu1J_kTww1dgLB4a17bvYtcmZ77ymaQ@mail.gmail.com>
	<4FA82443.10001@windriver.com>
	<CACW_hTbZze5nfCsuy097zUmyEs=0s6HT=y-q9af5fFd150bJRg@mail.gmail.com>
	<4FA914B1.3060602@windriver.com>
	<CACW_hTZ68+Ok8z+6diWZ=xToE9jPqZaoAAOdyYc6-xVsy7mszQ@mail.gmail.com>
	<4FA971E3.70904@windriver.com>
Date: Tue, 8 May 2012 18:40:12 -0400
Message-ID: <CADzUK1KTda0WsbULkuU5QeeWeosiYuy1hWt6_UM1n-Q_41dORA@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: modify a kernel patch
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
X-List-Received-Date: Tue, 08 May 2012 22:40:12 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, May 8, 2012 at 3:20 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
>
> For anyone following along (all one of them), Frans and I have this
> working now. It was a missing export of GUILT_BASE. I just sent a patch
> to the list for it.

Thanks!

