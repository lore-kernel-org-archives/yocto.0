Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A4FEE01134; Fri, 20 Jul 2018 19:09:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.169 listed in list.dnswl.org]
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
	[209.85.208.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51B2EE00C88
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2018 19:09:18 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id f8-v6so12548147ljk.1
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2018 19:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=40T10+cRSbkpf9bxk4KSeNAfkBuPDTjOGyuOqxhrjr0=;
	b=a+ixBn0LvuTvjLEmppcgFLLrxLYfcN9YoA+YFEh3YzGN+BbcJ7SPRn8/qg6uQCjVhi
	ZMG4/7uFYxfTIX8HS2iVL9vCPC9lGJwwFbOIoeFeSx/788VVo5BEI802CRpKruu+YnGA
	ZMcuJI0EZvEfsyiIqEKiL+YAOtJJBD1ANaudeU+kN5HxDV2fvkZWf7Oc83jca1oZEnZK
	CcxXQ8mYbYYcqtsHtYOgOJtXbAYiu4CFxwxbwcWWbzJbC4jiRQx83XTZhImgwzeentPX
	pqAnITnjnkgvkSx+H1FesEf/DDs2Ui8OHf9ntDpxb2+9BkmUBOQyN+PQIgnNbGbAjX3a
	hgeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=40T10+cRSbkpf9bxk4KSeNAfkBuPDTjOGyuOqxhrjr0=;
	b=C+KX5w4k2LaYDtv6Q6+YS0zp85ab1IsVrhshhJ88j5v6UQgT7DS9qqRSNDgElliUWm
	kl+3nDhvPr/BE24I0sqQz9s8yUcWxdh4iEzqoIy2mv1Nv+rtMoa1hX+dyaf1UOPTouao
	tJHRH6fiA91BScs7/x42Nz4F83XxwTSTW0r/8Uq8h5cmyF6NVOoGuCU/lyNTCLTlFjCw
	wxKE5Tv27SHWraLNJF7qLgyPL3CwRN1QdQjjjYrkMKgcueI0971+tCHXRWvRQGnapVog
	INARBhXxb4WkL9hy/kbO3uLKkc3Nj2fntrsvYhnCZqqqQ3S8/3HW8qmdX7iZ7y82NvcE
	ixdg==
X-Gm-Message-State: AOUpUlFh52bNeEVEpdBWeyuWddlgyX2NM0HNXBWOInHF79xFJveMyoBT
	I5edDShtCO4OlwXcJ6u2JnL0z1etOTUyTyIhZbimiw==
X-Google-Smtp-Source: AAOMgpdKI/ss9RFOrQ335WJLDUJ1ZKSu5GNt35jQyIAzENrwReCJVZksNICmxIDOgIKwOisKsjek0fCfZlCTEJ074Cw=
X-Received: by 2002:a2e:1609:: with SMTP id
	w9-v6mr3005647ljd.120.1532138957044; 
	Fri, 20 Jul 2018 19:09:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:2195:0:0:0:0:0 with HTTP; Fri, 20 Jul 2018 19:09:16
	-0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 20 Jul 2018 22:09:16 -0400
Message-ID: <CAHUNapSgrYX8T-A8BvMhUV+GU2OogC20FV3sFBrCpj88wMfnYw@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: yocto dev day 2018 eurpoe
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
X-List-Received-Date: Sat, 21 Jul 2018 02:09:19 -0000
Content-Type: multipart/alternative; boundary="000000000000480304057178e6b5"

--000000000000480304057178e6b5
Content-Type: text/plain; charset="UTF-8"

Has a date/location been set?

(Is it too presumptuous of me to assume there will be a Yocto Dev Day in
Scotland this year?)

--000000000000480304057178e6b5
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Has a date/location been set?<div><br></div><div>(Is it too presumptuous of me to assume there will be a Yocto Dev Day in Scotland this year?)</div></div>

--000000000000480304057178e6b5--
