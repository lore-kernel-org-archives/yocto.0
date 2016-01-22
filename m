Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC908E00803; Thu, 21 Jan 2016 21:25:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f49.google.com (mail-lf0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F7C0E007B5
	for <yocto@yoctoproject.org>; Thu, 21 Jan 2016 21:25:05 -0800 (PST)
Received: by mail-lf0-f49.google.com with SMTP id c192so40117931lfe.2
	for <yocto@yoctoproject.org>; Thu, 21 Jan 2016 21:25:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:cc:content-type; 
	bh=tjAtfta+qJDoXqyFN/KP8TxKp776x0m15pyz5Qj6Ckk=;
	b=xfx3jqLH38kwB6Srem/p6Mvm5S/o5H2VsG2JxXPDQnAdTHQMFqf9R5/BE6ErpoTZBQ
	3yOwstwG5X6lyNlQm1k5A1uqjKhBc80b8Qkk1Ggn27vzKgaMOiwEQsCxh8OSNjeAcmXO
	1xOlarjfdzZclYKQiyLmaSAoFGp0WWzqx01jDLu8CglbRmLuAEcOAWwrKrZ9T9bjq9NK
	eyjuYwLifT8RyzoKNcnVzQfFQZFaecFjqqg8qkcKkOitIehwegl3ogvfkhQsBNUSSn5i
	H7jK/PgL45eaimqfQdyePEd8puoTT0XI7DXNinRPsVQuOF0DeC7xg6sIo9nh/bszk60q
	rhdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to:cc:content-type;
	bh=tjAtfta+qJDoXqyFN/KP8TxKp776x0m15pyz5Qj6Ckk=;
	b=MRjRD2kXZA7QbrXwddMEJIxWAvaDmhmWs0o70ukRGMiI0fD3MGZBQyrJrN9tqfNOn1
	IrurY8yiqzqhHAG8Gum/8WOI+VRiZQBEQxbfb1sYnbe26b77ww4ronfBCdRgPYPZHg8y
	A7nj11wf1dVR1WDjTPVQxvf5bWZbN9id4IXULXD11KD0mUZeOUfQJqaixsVQYC94YHPH
	7UBvHubZRGr53YI/C4ZryFnqPQCmc988Tm61Z086v73yw46I5OTfF7H1rHxxGaWfdQO+
	Pa7KIuBTpSaSt9H2sA+XN0VcsMyx42rrkffSg1QLO5xPeDCtjKNE2vy0Pb7p6nm0j76M
	xAig==
X-Gm-Message-State: AG10YOShNLspo8sr0J65SXTPEk7Ck0bBiK2LWaqPBbMmWPzHBoHu+Qe+hz4MqcfQHDPoCVBzv5Gwk6FHZGW3wQ==
X-Received: by 10.25.212.199 with SMTP id l190mr423488lfg.163.1453440303487;
	Thu, 21 Jan 2016 21:25:03 -0800 (PST)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.55.101 with HTTP; Thu, 21 Jan 2016 21:24:43 -0800 (PST)
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Thu, 21 Jan 2016 21:24:43 -0800
X-Google-Sender-Auth: nR0H_jh2R1Gy-hv8wr4wlNyIc4c
Message-ID: <CA+YB3rb4nYhY+8PHiU9yAwFkfr7vZZkNRhtTVOGLwqNyk85Gkw@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: CORRECTION Re: [OE-core] Save the day OEDAM (after ELC and YP devday)
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
X-List-Received-Date: Fri, 22 Jan 2016 05:25:09 -0000
Content-Type: text/plain; charset=UTF-8

This should be Friday, April 8.

If you are making plans to travel to ELC, the conference takes place
Mon-Wed Apr 4-6. DevDay is being planned for Thu Apr 7. OEDAM will be
Friday Apr 8.

Please RSVP if you plan to attend. I am looking for a venue and need
to get an idea of how many people to accommodate. We may also plan
some kind of social event for Friday night if enough people are
interested.

Summary: if you plan to come to OEDAM, please plan to stay through Friday eve.

thanks

On Thu, Jan 21, 2016 at 2:24 PM, Philip Balister <philip@balister.org> wrote:
> We are arranging an OpenEmbedded developer meeting on April 7, 2016 in
> San Diego. This is after ELC and the Yocto Project developer day on
> Thursday. (This is more a training day)
>
> We will publish more information as we work it out, but we did want
> people to know so they can schedule travel.
>
> If you have suggestions for this you would like to cover at the
> developer meeting, let us know.
>
> Thanks,
>
> Philip
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core



-- 
Jeff Osier-Mixon
Open Source Community Architect, Intel Corporation

