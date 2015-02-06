Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07364E00809; Fri,  6 Feb 2015 03:04:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.42 listed in list.dnswl.org]
Received: from mail-yh0-f42.google.com (mail-yh0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C39D1E00757
	for <yocto@yoctoproject.org>; Fri,  6 Feb 2015 03:04:25 -0800 (PST)
Received: by mail-yh0-f42.google.com with SMTP id b6so4336625yha.1
	for <yocto@yoctoproject.org>; Fri, 06 Feb 2015 03:04:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=OSHV7cBNt6FjZ6KzM8nxfbGWK3blEDORI1NJe31R55c=;
	b=t5urQDCV5AKJVO9f4eRUzwUpblvVB09PvPgXxrkAI4hcX3FJU3MttMn3/w91RILYMV
	TliatwfahulcZnskkLgxzzQmMc7GxmqEV3mPjrVyJF+O/69WX2I20k+mQOWlLxomgO92
	9SCijqligj0oYOXQ95J0lRcwfasgyTC9mphXwzQOowNWNoo9+MtAT+QBl9kTay/3Nbm5
	VskdRIQpHpN9tABVW+51yyy2KRDA0p7AJ6/WMXKVZkTXdPivXOWUy/bdOyKqEZF2qk/Z
	Qq9CWx0PYo55JBn5HTXgqj1TTjK0jcjbmvGH8srT/VFKDCaxn3KeXYyCXeVVGP5nCLPY
	lVLw==
MIME-Version: 1.0
X-Received: by 10.170.187.213 with SMTP id d204mr944733yke.99.1423220665144;
	Fri, 06 Feb 2015 03:04:25 -0800 (PST)
Sender: otavio.salvador@gmail.com
Received: by 10.170.123.143 with HTTP; Fri, 6 Feb 2015 03:04:25 -0800 (PST)
In-Reply-To: <CAKGbVbup5y5suRGUhyDxdmC-j-5XKzNER81qFc_WBqWbCWO=8g@mail.gmail.com>
References: <CAKGbVbuXvDEirTo9jcM+aGHszcjgwgKvKaJQAYU6wE1M5W1u_A@mail.gmail.com>
	<CAKGbVbuUbQ970__5EGF+1Z3wcqD6rQsqUjLTmg20swqf53UAVA@mail.gmail.com>
	<CAKGbVbtRMJyMRQtjDaVZaWYCXOn4hGTfpP8j+8GM0ADGjUTmZA@mail.gmail.com>
	<CAKGbVbup5y5suRGUhyDxdmC-j-5XKzNER81qFc_WBqWbCWO=8g@mail.gmail.com>
Date: Fri, 6 Feb 2015 09:04:25 -0200
X-Google-Sender-Auth: Pep-CQX56jDioSDeEi84IFr1ZDI
Message-ID: <CAP9ODKrxvf0_AoXjK+bK+_YSZWeUAS+9uqLqYJbGcYhJ+c9weA@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Qiang Yu <yuq825@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Xie Chengyong <chengyong.xie@theqtcompany.com>
Subject: Re: [meta-qt5] static link plugin lib path problem
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
X-List-Received-Date: Fri, 06 Feb 2015 11:04:40 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 6, 2015 at 3:32 AM, Qiang Yu <yuq825@gmail.com> wrote:
...
> Another question, from the wiki I saw quit some work on the QT5 build path.
> Now that QT5 is enhancing its cross-compile
> support, will meta-qt5 switch to the native, less-patch and clean method?
...

If you take a look on the amount of changes we end doing on top of Qt5
you see that OE-Core has some specific needs which are not fully
covered by the Qt5 pristine build system.

The less we need to change it, the better, however so far some changes
are still needed.

Any step done in merging those changes on upstream are a step on the
right direction. :)

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

