Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59519E00CD5; Thu, 22 Aug 2019 19:58:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E755E00BF8
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 19:58:16 -0700 (PDT)
Received: by mail-io1-f65.google.com with SMTP id p12so16738517iog.5
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 19:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SVceqkCMOZfv8Y2SomtyAk26gkBj+W2bdyVwiJAjH9Q=;
	b=olpTpeFlq/VG4rZ4W6iprtn6pqSlfyum1YgGTmhSspLRrEWRoD5m8/TauBu5NxmvWg
	1p91sSRLTXDepoDGhvd7PKwiEy1wfjMjN9M6zDwcXumrnCAh5YqMhCRrW24e7+0an/Fa
	tcamMeQHkpyE8CQidjyBNomDnk/2juUaPRbOOxtTM4e5H3Iz2C4sr1lankFulvhRme88
	KG3TfxmrwWmO7Nm97r3rfXogAS2bWNzK10YUg/IICrTbGDi/92uu2V1v0A4mfnTepV/6
	TJy2tLAM5ujkNh/WwZaATEPIQmfECOg7ArAwmPBAwdk8oXERtm84k/mor0UYNnvvuq9G
	cvtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SVceqkCMOZfv8Y2SomtyAk26gkBj+W2bdyVwiJAjH9Q=;
	b=eJGg7yccBmtXFHoTgVfwKQbFmmXqqRJpnsHgdICop/TvlQGsySBYlMJA+5dTLyp62Q
	N8bM2dEOL/6SKyBCbhIYf7LcZVrabxRemW3QNUA3hlGmvfflYFvlk6YI92DUBoEbXuy0
	LfOpiHArMhhR7+wjDRhTfAVST08NLYME8XtU/iQpEQxJfhOgyslUMh+lRvjW+WPINSzT
	3miCCXDzXbdOIrUTL8jSNXEnUlk9C81aorKWutxBQ8s6gPiCtfo+ShSJHFHY90sUFlgO
	DsRDRPB9CCWle++yqRBd3ClkjHHjOcn30XVo3dnpuRZIIucw9MeaOMOuX4wIqjHtIO42
	scgQ==
X-Gm-Message-State: APjAAAWwEjqV7I4CIJD0SAnORDHvXX5Ify9pw1tlBTQGlOv7XzypiFfk
	JBYUHaHHKiYjWmwlSopHep5dtewkCKZ4nkHLkfyc+RU5
X-Google-Smtp-Source: APXvYqykTLLKsgTVDPRt9h5AROTshxwzKEnvm7GQBCBisDOaf08i2r9iduL7aX1ml4LtNyMqTT2iM3c7E5Dr56KfCrc=
X-Received: by 2002:a5d:8f8a:: with SMTP id l10mr3748109iol.306.1566529096245; 
	Thu, 22 Aug 2019 19:58:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a3c1:0:0:0:0:0 with HTTP; Thu, 22 Aug 2019 19:58:15
	-0700 (PDT)
In-Reply-To: <d61333d0-47a1-194a-abbc-d3dbf34bc296@windriver.com>
References: <CAA=hcWQ3N8VevOFcsL+595HZp4UqcgdQgQrQJFpMttDFLZPVdA@mail.gmail.com>
	<CAA=hcWQ9fMMFw65h4M8LWM_Mqx-MDN2sUDy+pzLSMgFV1bak1Q@mail.gmail.com>
	<d61333d0-47a1-194a-abbc-d3dbf34bc296@windriver.com>
From: JH <jupiter.hce@gmail.com>
Date: Fri, 23 Aug 2019 12:58:15 +1000
Message-ID: <CAA=hcWT7mowfMWp+JoT+2Oi8S+M+j19cEfDXgrPQwih+WQoYPg@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Can Yocto build to set up process running priority in service?
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
X-List-Received-Date: Fri, 23 Aug 2019 02:58:18 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks ChenQi, can the process priority be set in ExecStart= of the
xxx.service file?

Thank you.

Kind regards,

- jh

On 8/23/19, ChenQi <Qi.Chen@windriver.com> wrote:
> On 08/23/2019 05:32 AM, JH wrote:
>> I have two processes launched from a service unit, how can the Yocto
>> customer distro to set up high_priority_process?
>>
>> ExecStartPre=low_priority_priority
>> ExecStart=high_priroty_process
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - jh
>>
>> On 8/22/19, JH <jupiter.hce@gmail.com> wrote:
>>> Hi,
>>>
>>> How to set up process running priority for services in Yocto build
>>> using renice or some method?
>>>
>>> Thank you.
>>>
>>> Kind regards,
>>>
>>> - jupiter
>>>
> Not sure about your exact needs. But as far as I know, nice value is
> inherited. You can just set it for the shell that starts a yocto build.
> If you are using some scripts, the same logic holds.
>
> Best Regards,
>
> Chen Qi
>
>

