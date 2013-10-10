Return-Path: <amittomer25@gmail.com>
Received: from mail-we0-f182.google.com (mail-we0-f182.google.com
	[74.125.82.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92E74E015BA;
	Wed,  9 Oct 2013 23:32:48 -0700 (PDT)
Received: by mail-we0-f182.google.com with SMTP id t61so1957420wes.41
	for <multiple recipients>; Wed, 09 Oct 2013 23:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ToTCXFBdBd/A7pIS207Jf0Sd27HIdgzisEu4L02XFhk=;
	b=Mf1OOLa0ipfT+k60yKh+vdY1V0rbI0DrQBgb86K4IZ0Js4borDJ1/isJeStZGNVWSW
	fVI/CZYOyCDZqrZGYDUNJW/8Ng2RbdDmAPA2p+sJtNm+m7WFj69D6BKFKHZt2QhnKpHE
	lTKuJlO3caGzmGFr6uM3ytMN6qZaQao7P4JCvgYwqaxzxDtknzSLz5kyLzdQT5dAJnJb
	DXMLR2Ez7mopzn+F1ZBy5PlA6FM0w102o1b1enA1nWQn7rJ8KhsK0acfCxVJh8l0eujk
	YfU7H2+G1HJW6yt7BpDZ9OPa8NFQCS+WprLHzn9JLADZAs7fQi+7tgNBQgz18c7Ap8v+
	Dv1A==
MIME-Version: 1.0
X-Received: by 10.180.149.179 with SMTP id ub19mr6052735wib.43.1381386767123; 
	Wed, 09 Oct 2013 23:32:47 -0700 (PDT)
Received: by 10.227.197.69 with HTTP; Wed, 9 Oct 2013 23:32:47 -0700 (PDT)
In-Reply-To: <CABcZAN=dk1xOtBAm=+z340+ZXLFkMsT8hBXDNhLeqgCKBkSZKA@mail.gmail.com>
References: <CABHD4K92=qtjaCzmvRV9yAMhWk_uZjz60is1UomcoWn0qz5V1A@mail.gmail.com>
	<CABcZAN=dk1xOtBAm=+z340+ZXLFkMsT8hBXDNhLeqgCKBkSZKA@mail.gmail.com>
Date: Thu, 10 Oct 2013 12:02:47 +0530
Message-ID: <CABHD4K-wckj3ciCadCbiUF-SGBSb=gMTYwcyXRPeZEOhUs+Q5Q@mail.gmail.com>
From: Amit Tomer <amittomer25@gmail.com>
To: Chris Larson <clarson@kergoth.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-request@yoctoproject.org" <yocto-request@yoctoproject.org>
Subject: Re: Is there anything like FILES_${PN}_append??
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
X-List-Received-Date: Thu, 10 Oct 2013 06:32:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thanks Chris for your response

So you mean to say I can apply it to FILES_${PN}
IS something like FILES_${PN}_append_xyz fine??

On Wed, Oct 9, 2013 at 9:54 PM, Chris Larson <clarson@kergoth.com> wrote:
>
> On Wed, Oct 9, 2013 at 1:24 AM, Amit Tomer <amittomer25@gmail.com> wrote:
>>
>> Now for variable SRC_URI ,I can do something like SRC_URI_append_xyz where
>> xyz is my platform where changes should be reflected.
>
>
> This isn't specific to SRC_URI, it's general bitbake syntax that works for
> any variable.
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics

