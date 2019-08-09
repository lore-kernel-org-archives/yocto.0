Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D02A7E00CDF; Fri,  9 Aug 2019 00:52:02 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.48 listed in list.dnswl.org]
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADA99E00BF8
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2019 00:52:01 -0700 (PDT)
Received: by mail-ot1-f48.google.com with SMTP id l15so72072619oth.7
	for <yocto@yoctoproject.org>; Fri, 09 Aug 2019 00:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ocUaWqwhLXnBcCw7mAq/fU+S7dBULyQbXWqanWtz9Qo=;
	b=RtGXV+OPNl0zd8jqRNAgDP61MCvB5wVgvV2Rsn2Gdj3vM+y0f+GPLgai0H4OCnvv2h
	fkfkDYnx2PUpw5fYNkIafRlOKTU/oVKAQF7mKXA7z09nTypzeoddKXm1QiN892FYEkvr
	fcvpjIHgH0ueboT4EV27NDeUR3RVcdSgVEemuHZekB7XP1oVg+V977cmarbgpCgu3/7C
	blN/PtJcFEWts4Y8swpKeTMEo8aASLt89Dzq5VPvbVBJbnoZe27JKjqobNrOOr7qmpzt
	PUDnPnFv2sz4W/D3rEHJEEVEGvabVNt53kbgvM/4TTLNn5NbYwcizLrzYepmC5f5Nv8B
	vEPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ocUaWqwhLXnBcCw7mAq/fU+S7dBULyQbXWqanWtz9Qo=;
	b=R2iuYVwvzPlouJ3YJYO8MeWukaYOVinupvsU4C22D9MOXW22yFcaVWx3cVVXJF2bzB
	xbVNLkjdA6jLuv8XriTYc2oXQIrqy9yX77mjixGa8unUZb675LDpyFV3N0JqqL93tTQO
	5vMutY/ONpLIu8RldbYIwcLhHBwRoofhBSfAFgUBFFazsxlS2X8VRq7dI3v+ABhWavXR
	DDgZ9xzpNzQOCPfPorUibU8pBlt8oqgWpdCwiodXCIlwsg8Qv7NaX2DDmvcrDOuDiFI1
	Y4snghlGTsYEsUB4uFBz5nnx4WieoqyewdHt4QoHGEf/doLww1JRYRIY6/gw25Azk/Kg
	80sg==
X-Gm-Message-State: APjAAAVTnCPvjXq9WwzFzo9NcUoWShzrpufSBgou5X1OEPa7Av5lHxAG
	11TjKRm9elH/tGW9QV6QbL/BFMTbx0W5c8LtCfE=
X-Google-Smtp-Source: APXvYqx9WdKJ3736zZLRM2HA0pQ4b7p3ndT8j/esFk9aJq1RBgErsbXBQfkIxdzDtRpWV624dOSNSDpfsfMWKzT4CTQ=
X-Received: by 2002:a02:cc8f:: with SMTP id s15mr20762087jap.94.1565337120967; 
	Fri, 09 Aug 2019 00:52:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Fri, 9 Aug 2019 00:52:00 -0700 (PDT)
In-Reply-To: <a7cda5f1-cc91-f9af-2bb2-326b1edd2eec@windriver.com>
References: <CAA=hcWS8cd8oXtY2z=JMAL6BB=tMSEi6yZMxSzz2fK8zyHnGEQ@mail.gmail.com>
	<a7cda5f1-cc91-f9af-2bb2-326b1edd2eec@windriver.com>
From: JH <jupiter.hce@gmail.com>
Date: Fri, 9 Aug 2019 17:52:00 +1000
Message-ID: <CAA=hcWR_=eQPy2S5VePpEjexxoom_3=bCKUTtZXRw3sCSr=Dvg@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to create a service only startes at shutdown process?
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
X-List-Received-Date: Fri, 09 Aug 2019 07:52:02 -0000
Content-Type: text/plain; charset="UTF-8"

Hi ChenQi,

Thanks for the help, I tried following service, it did not work, the
systemd complains bad unit

[Unit]
Description=Application Shutdown Service
Before=multi-user.target

[Service]
Type=oneshot
ExecStart=
ExecStop=/usr/sbin/app_cleanup.sh

[Install]
WantedBy=multi-user.target

>> Most of the services are started in boot, how can I have create a
>> service only to be active in shutdown (not in boot) to clean up?
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - jh
>
> Make use of ExecStop, leave ExecStart to be empty.

I tried it:

[Unit]
Description=Application Shutdown Service
Before=multi-user.target

[Service]
Type=oneshot
ExecStart=
ExecStop=/usr/sbin/app_cleanup.sh

[Install]
WantedBy=multi-user.target

There were errors:

Loaded: bad-setting (Reason: Unit myclean.service has a bad unit file set)

What I could be missing here?

Thank you very much.

Kind regards,

- jh

