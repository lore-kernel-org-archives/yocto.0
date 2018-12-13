Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEBBDE00C9F; Thu, 13 Dec 2018 06:29:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
	[209.85.210.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 356F0E00C8F
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 06:29:20 -0800 (PST)
Received: by mail-ot1-f47.google.com with SMTP id e12so2062752otl.5
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 06:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=bkM5GMOa/xpCLJ6SZMA+Pi8eHvCJOSrOfxz/JyVTbP4=;
	b=VmQBFWrM3VR0RjQ7aOqddRilC1Ej/JZj3vJ5k8N8pn0s8AK8YBclvN19CSoDyDldJt
	FcuGMEo3ZJaxNd9qOrbB0qhu+QKJIr46Wea9vI9bq9QZLNVJjFePDGN5OYJAjMTS8uI5
	wLc8gMvGeSRMW0UWu7wgs3L6KO+QSNEHIojDJDmOkpV3k192AhRT4QnlXyRvA2yVmYLX
	DhoGwA9k8YKoQJqfiZ0AjJJq0WEdZgC+GAYlJiwyEHBs//KNZ440TaDu25YvYU853fno
	G+kj63DjYTPrirPrEiMQZ7g78Q37Z9QtEE1Xspy5B8oo0BsanVbV81b0Oty6sDzFaFWq
	8MJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=bkM5GMOa/xpCLJ6SZMA+Pi8eHvCJOSrOfxz/JyVTbP4=;
	b=s6XA3uA2MBhUVlppZq4KzESfRJQ/+3qtpcHwU644ITCXRWbft9na9GwKAvf3gqSNSw
	Ue5/gyXuyh8l4M5bZX6MWrYjS9NoM3YQ0yuScNUOSS6pWm5CPhTQuWO+PJEbjfEvK0Ys
	GhPizhCq5ZqLubs4IDw0Ky2qBBr2skELbNJic1cLqMq+Ncs/9ILCpdN5WkK0neVETBhV
	+4pE8kyEmENxGG0EXjXMLMO1q0oA62RYcR8/aSQUysx8kgF3b9q1dzE/TtSlAEwM5LjU
	by4+VI0dMyjD4diZxVPnE619cOTcePsnpBfe+ZYdVCSUPRVLyIh6ik9QiCr3gztMxXCK
	TmNg==
X-Gm-Message-State: AA+aEWaPp9AukmlZ8KlYRF9f8cJnZm2zb+TfCh/hca9X9hC9yNlTYAX4
	nLRrkFG94Y00I0nns6jVMSj5eINq7kU3mPbivuCnGT/ANvc=
X-Google-Smtp-Source: AFSGD/XzvZ8IsB11H2CxBGnar5XMhJ8sbvekq7Yy7nMyOTKDM8PxIVKo+cJbZz5AlX4WtZVZIH1fLy3weusCS0m/hkI=
X-Received: by 2002:a9d:4687:: with SMTP id z7mr9366201ote.350.1544711359453; 
	Thu, 13 Dec 2018 06:29:19 -0800 (PST)
MIME-Version: 1.0
References: <CAOT_U5YDEXHTHtbeb1Hhxvk5=7AufdpyT2u7L1TEpjYL8D0BAw@mail.gmail.com>
	<lypnu58r4c.fsf@ensc-virt.intern.sigma-chemnitz.de>
In-Reply-To: <lypnu58r4c.fsf@ensc-virt.intern.sigma-chemnitz.de>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 13 Dec 2018 15:29:08 +0100
Message-ID: <CAOT_U5YxatZgS8XTdV-psrj_PYE55XSy24=PcUSCNz8gAM4QoQ@mail.gmail.com>
To: enrico.scholz@sigma-chemnitz.de
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Best practices for tokens/passwords that can't be versioned
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
X-List-Received-Date: Thu, 13 Dec 2018 14:29:20 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks for the feedback.
This is a very interesting use case.
By default you want to allow ssh access for the developer who built
the image, cool :)

On Thu, Dec 13, 2018 at 2:59 PM Enrico Scholz
<enrico.scholz@sigma-chemnitz.de> wrote:
>
> Alan Martinovic <alan.martinovic@senic.com> writes:
>
> > am looking for opinions on how to deal with recipes that depend on file content
> > that can't be versioned.
>
> For ssh public keys we use something like
>
>   https://github.com/sigma-embedded/meta-de.sigma-chemnitz/blob/thud/classes/elito-image.bbclass#L36-L44
>
> e.g. we take it from ${HOME}/.config/oe (which is a little bit tricky to
> expand).
>
>
> And/or incliude local/side configuration by
>
>   https://gitlab.com/ensc-groups/bpi-router/BSP/blob/thud-next/build/conf/local.conf#L33-36
>
> which in turn includes something from ~/.config/oe/
>
>   https://gitlab.com/ensc-groups/bpi-router/BSP/blob/thud-next/build/conf/local_bpi-router.bigo.ensc.de.conf#L9
>
>
> > i.e.  The logging service on the embedded device needs to have a
> > certain private key
>
> Note that including private keys in the image usually weakens security
> because the key can be extracted more or less trivially.
>
>
>
> Enrico
> --
> SIGMA Chemnitz GmbH       Registergericht:   Amtsgericht Chemnitz HRB 1750
> Am Erlenwald 13           Geschaeftsfuehrer: Grit Freitag, Frank Pyritz
> 09128 Chemnitz

