Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f174.google.com (mail-ea0-f174.google.com
	[209.85.215.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72354E0043B
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 15:26:01 -0800 (PST)
Received: by mail-ea0-f174.google.com with SMTP id z10so2119914ead.19
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 15:26:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=AZqYFYm5yzvpX/FdCoVntLUyOakiErHoInoGsyCdojg=;
	b=iYc2D5A73Kdl+XupZ6s+u0PdAyJMGhMnbDDvaA7g2DLQBMK8yTjviihRxRUb9vnAbi
	bvl2Vi4exW9oxAQ+U/V7b06HiM5KQLl/dee/PUyXQuX0v45XfTP8q5DR6VvNLeILWYgO
	uFYRDA7Ho/P7y+SSs9OLZgUPfIeQrFYtZk5ZaM5kPvabomJOI1SARULe4XZX5moICQkq
	s18RJkL2F2xRC686Havn5EEzko3QEoQrqo8Wjc0FXHYud69hJYhzaX5ITSmZV1/81bK7
	bMFr3ZtufDQgQTzFr1eSqYbrfCKRUxg+ayGu58lwKpneNkqRiG8YKU0gQ1selKvkbGs+
	iPgA==
X-Gm-Message-State: ALoCoQl7P4TsF+SNrDieoAopB3Y7iuBPtEOOrYHJeQO1AyVuD9vE6fXGW86kS24UxlbYdep78cvr
X-Received: by 10.14.22.5 with SMTP id s5mr4799603ees.85.1392333960343;
	Thu, 13 Feb 2014 15:26:00 -0800 (PST)
Received: from gmail.com ([86.35.186.59])
	by mx.google.com with ESMTPSA id s46sm12561473eeb.0.2014.02.13.15.25.59
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 13 Feb 2014 15:25:59 -0800 (PST)
Date: Fri, 14 Feb 2014 01:25:52 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: =?iso-8859-1?Q?S=E9bastien?= Mennetrier <s.mennetrier@innotis.org>
Message-ID: <20140213232552.GA13245@gmail.com>
References: <1392136410-8478-1-git-send-email-s.mennetrier@innotis.org>
MIME-Version: 1.0
In-Reply-To: <1392136410-8478-1-git-send-email-s.mennetrier@innotis.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH V3] Add initramfs support
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
X-List-Received-Date: Thu, 13 Feb 2014 23:26:02 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hello  Sebastien,

On Tue, Feb 11, 2014 at 05:33:30PM +0100, Sébastien Mennetrier wrote:
> Permit to build an image with initramfs.
> Add information in README to build with initramfs.
>
> Signed-off-by: Sébastien Mennetrier <s.mennetrier@innotis.org>
> ---
>  README                           | 13 +++++++++++++
>  classes/sdcard_image-rpi.bbclass |  7 +++++--
>  2 files changed, 18 insertions(+), 2 deletions(-)
>

Your patch was merged. Thank you.

--
Andrei Gherzan
m: +40.744.478.414 | f: +40.31.816.28.12

