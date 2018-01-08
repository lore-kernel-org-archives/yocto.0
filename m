Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5797E00DED; Mon,  8 Jan 2018 00:23:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57393E00D92
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 00:23:20 -0800 (PST)
Received: by mail-lf0-f45.google.com with SMTP id e27so11176114lfb.9
	for <yocto@yoctoproject.org>; Mon, 08 Jan 2018 00:23:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=58ku7Wal+0DO4KhS5erGYPIlTL5LQMe17byqvTv6Tmo=;
	b=lPrUs1oRfr18KyTjK8o2ev71VZvoMhkNeSgw0o6t2SbVB95XMce8fPJSwr1aNQ6NyS
	SwjXXJWThHQ4F988CkS1RfXue+WmXMiYlM8gMV5rYjyikxWeMfjVAHzHjTJqUf/bOyho
	kmTXpux+7u3H1OIZj1HY0/ghMz9J7I52c7vLsoG4S80/9OEva/5nQuy+Z0wBPzfl++/Y
	Zgs+ReRcgu7RU+9w3qIqHaHImB/bH5HmtjSbvMBZ7q8PMfqgtQUbPD88oZ3EqCjzJMmL
	hNl1I0Niiaz/UWSHtJS+xJP84cakEwZvzeJbaz/JSga6dL2JHxSdJP0xX5YV2qSB7a6F
	3TsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=58ku7Wal+0DO4KhS5erGYPIlTL5LQMe17byqvTv6Tmo=;
	b=BQfDVG56/oWVwk0cBepUZKyyLIaIYTVPZdkVXHJoy6XNek1KWU2YIEpFMMDpgxtbUz
	dXMXVmXnsgIdSoQRu0bwSkk0K2S+gl4+Kq5Xq2ACTZst4dMxjkCl89GnchO2oFHoSowC
	vTkb1eT8TXJstK9oZ+hEzF8Kcqsj2Z9ygCcDjzlE1cAFMSQ2Mv3xbQPNiv5dxS0wGcUw
	Z8AIvvdOeEayWPlUcg+ZUakpka3EmDIHnPx/QjfpbOKyLkemPMXf0qAzuOKNItLwcuOu
	U7n1iSYUkDSGdwA48p/imZgsgvYPYpXNJbED6rDLimHdmYmlwTZBH+HRIczVyrYN3A1e
	XUtw==
X-Gm-Message-State: AKwxytfy//xUGDYSLEpQeIQzRbVE4snPW+DgaarDlsmGHv+wKvMfN4o0
	wC212QAQTrkay4WVN3/w3K+eFT0+GK6/RQszLn68aw==
X-Google-Smtp-Source: ACJfBouh2j/RDU4mcUv6epk23LUVsDV3cF2Jz8wtAW1JVRdUNPYuYAaAMowwtP2Jea/KaW9fEctRb8FworPeQbB8HKE=
X-Received: by 10.46.97.1 with SMTP id v1mr6267759ljb.84.1515399799967; Mon,
	08 Jan 2018 00:23:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.87.193 with HTTP; Mon, 8 Jan 2018 00:23:19 -0800 (PST)
In-Reply-To: <CA+JFif17HGmrSTKYESP1hnVJAwX7kZwmA5K8-irFv7NHSarLUw@mail.gmail.com>
References: <CA+JFif35T7yDxkeX3OAjjw079fxWOVqH4wnet8_GwNM3_9LRSw@mail.gmail.com>
	<CAOT_U5Yt8XpFir0TTXDPTqLA8Z20WeRFAjw=JNOo7O6w7bRUaQ@mail.gmail.com>
	<CA+JFif17HGmrSTKYESP1hnVJAwX7kZwmA5K8-irFv7NHSarLUw@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Mon, 8 Jan 2018 09:23:19 +0100
Message-ID: <CAOT_U5Y10EZimeJXzOFh3c1xf4gCbJcFc=Y0ju5JfqDpvzLYtg@mail.gmail.com>
To: Mathew K Tharakan <mathewkunjumontharakan@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Reg: Yocto python library updation
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
X-List-Received-Date: Mon, 08 Jan 2018 08:23:22 -0000
Content-Type: text/plain; charset="UTF-8"

Try checking this helps you:
http://www.yoctoproject.org/docs/2.4/mega-manual/mega-manual.html#var-IMAGE_INSTALL

On Mon, Jan 8, 2018 at 8:13 AM, Mathew K Tharakan
<mathewkunjumontharakan@gmail.com> wrote:
> No
>
>
> On Mon, Jan 8, 2018 at 12:40 PM, Alan Martinovic <alan.martinovic@senic.com>
> wrote:
>>
>> Have you added them also to the image?
>>
>> On Mon, Jan 8, 2018 at 7:14 AM, Mathew K Tharakan
>> <mathewkunjumontharakan@gmail.com> wrote:
>> > Hi,
>> >
>> > I'm working with iMX6ULL yocto (version 2.1)project. I would like to add
>> > following python libraries along with the image. I tried adding .bb file
>> > but
>> > the packages are not getting integrated. Please reply some possible ways
>> > to
>> > solve this.
>> >
>> > Python libraries to be added,
>> >
>> > SciPy - 0.18.1
>> > NumPy - 1.11.1
>> > Pandas - 0.18.1
>> > Scikit-learn - 0.17.1
>> > math - 0.19
>> > Memory-profiler - 0.45
>> >
>> > Thanks and Regards
>> > Mathew. K. Tharakan
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>
>

