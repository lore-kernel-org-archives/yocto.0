Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ee0-f43.google.com (mail-ee0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1143CE015A4
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 18:23:44 -0700 (PDT)
Received: by mail-ee0-f43.google.com with SMTP id e52so2400574eek.30
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 18:23:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=rCD5RFYfjKaMa+nh4YynNMLVjpMBjaOO1UP5A0Fc53Q=;
	b=T0BrS+eTsAcsp8G/uf6pvyoVEw/ATTDRbcGGd/HAPeS9qIPSM5adCNg/isq4NfVNGd
	YrJt3CIzi7ZaL9kBCZxh6ggn9YaBH6L08g4xHt3YIpz30ecQlnBN+rccC2ZyA0v0fbVJ
	XB4EMs+aRmoRi7Sys1KfO9fb6CRagVB1PRhiiQyMINzAy2eQY2P4o0RVpFjjeMUZ+yES
	bCU34rwtYzxMGKMiReb7NTHJW9lyaMdmRH2hP+cI5p50Ex/881cFocycfbbDeD1Ydyqb
	a04cKJZY8xQm7bDPBvGzfVFDK4BtUJtexzYUZ27onsxgPfKPwKkq33QExqEHaegyGacE
	3WIQ==
X-Gm-Message-State: ALoCoQlOsgXKh4Lq1JXcmL6qI0MDn8NWB2qUrW75cU76VIT/Ry3CufUM1Y8nEycOr1taZTJQ2RzM
MIME-Version: 1.0
X-Received: by 10.15.35.196 with SMTP id g44mr47493363eev.18.1379381023763;
	Mon, 16 Sep 2013 18:23:43 -0700 (PDT)
Received: by 10.14.117.67 with HTTP; Mon, 16 Sep 2013 18:23:43 -0700 (PDT)
In-Reply-To: <CAGNsrLCvcW2WNSfmMm-DLQMxFXC5=rr9Sknj6ECdmuiZc=gHgg@mail.gmail.com>
References: <CALmOhgkofBhyjM_MyFQ8tYYoVHtMNTY4S6G2oNuj+NEMw0GtCw@mail.gmail.com>
	<CAGNsrLCvcW2WNSfmMm-DLQMxFXC5=rr9Sknj6ECdmuiZc=gHgg@mail.gmail.com>
Date: Mon, 16 Sep 2013 21:23:43 -0400
Message-ID: <CALmOhgkPb8KC5iCYZ+FWhzcPmZG9Vpr3Zw3CurdtUn7b2L4WYA@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Fathi Boudra <fathi.boudra@linaro.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [DYLAN] RPATH issue with qt5's qtwebkit
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
X-List-Received-Date: Tue, 17 Sep 2013 01:23:46 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Fathi,

On 26 August 2013 07:11, Fathi Boudra <fathi.boudra@linaro.org> wrote:
> I haven't checked how qtwebkit is built or meta-qt5, but the Qt's
> configure has -no-rpath option. A grep on meta-qt5 doesn't show any
> usage of it.

A "-no-rpath" option looks like something that might be passed to
./configure? I'm not sure if things are done differently on master,
but on dylan qmake is used to generate the Makefiles. Or is
"-no-rpath" something that can be passed to "qmake"?

