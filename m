Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 84BB3E0070F
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2013 09:32:19 -0800 (PST)
Received: by mail-vb0-f51.google.com with SMTP id fq11so3621361vbb.38
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2013 09:32:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=RU/d0Nti9MGYIqZ6hmJENCQpDl8Kc+9ic45BcLyP5Q8=;
	b=FcLK4jCHE/NqiAk1hqAuNEs/UHwAPgr9fjCJD3dWxk60OW3yQ/Ia6RpzLrF1ozmW9Z
	FedIGZHYbu4SsEH0YLHCv5y3B+8zwKrsJYZu/uGdFhyWCeruI6As2+z6YcRwTbBOJu1K
	yPo8Candr9KfR4oC9oG/PhVYU12G4u/gbN2ISzzDVkM72pnNjfeTodS0JB6p/fyEtokd
	fIyQvSJdHVkg4kli0KKJFohXVlUQ9b/YoKOcxMiF9KaYutMx6+/+yVDaoTK4Hwjmav/P
	MrRL7XptfbyXT4zORgei/agwecMZrzi6WY+sdMgmCn7JJLE0EcKziecTfsSQVTt3heUr
	Aefw==
X-Received: by 10.220.154.148 with SMTP id o20mr16639179vcw.54.1361208738190; 
	Mon, 18 Feb 2013 09:32:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.85.36 with HTTP; Mon, 18 Feb 2013 09:31:58 -0800 (PST)
In-Reply-To: <CAF6bG8fg4nUAg5aDRFoH=T2jTZ-cMHwY+VmX2hhUcUoiWke=jA@mail.gmail.com>
References: <CAF6bG8fg4nUAg5aDRFoH=T2jTZ-cMHwY+VmX2hhUcUoiWke=jA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 18 Feb 2013 17:31:58 +0000
Message-ID: <CAJTo0La+-Sghu1X4-ja-DnzjHY9Sm3ATczD2pwGu6hed8qfsGQ@mail.gmail.com>
To: Marko Lindqvist <cazfi74@gmail.com>
X-Gm-Message-State: ALoCoQlcipqFvTYmQaEbRn6bULGsmbL4rBUN6C8XzpZ5ByDxMBAEbU6mvTkmhYSzW1UliZZtyjRr
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Fix oprofileui build with automake-1.13
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
X-List-Received-Date: Mon, 18 Feb 2013 17:32:19 -0000
Content-Type: text/plain; charset=UTF-8

Hi Marko,

Merged to oprofileui master, thanks.

Ross

