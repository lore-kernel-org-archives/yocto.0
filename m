Return-Path: <mohammedaqdam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44FB3E00CD1; Sun, 24 Sep 2017 21:23:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammedaqdam[at]gmail.com)
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
	*      [209.85.161.175 listed in list.dnswl.org]
Received: from mail-yw0-f175.google.com (mail-yw0-f175.google.com
	[209.85.161.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90EC6E00BE8
	for <yocto@yoctoproject.org>; Sun, 24 Sep 2017 21:23:04 -0700 (PDT)
Received: by mail-yw0-f175.google.com with SMTP id u205so3924058ywa.5
	for <yocto@yoctoproject.org>; Sun, 24 Sep 2017 21:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=EIEATNPLpTow1I4w4CsYfTnLO3rHdXwAqUpFh9xYU94=;
	b=NBE+IE/E9ZP0ohAHqzi50gMVI6C35tIzn9XPYD+qAQAYphY5lun36ImOLGv2iD9ONO
	NOsAW/P+uznun9E7mLQMVCjlQz9RVKycJl2s5yjuSjCs+WETVy7RBXfGvaYy2E8+pTk1
	lMqwTWWFPmzJUSk9UyJNolnCNuNQjIwCDJ+93gmlyntrmaq2i/GO5fpnF42XjZ+pmLtT
	l3rJt+sES7r7EOI3VuLvt1PWpUndyyWbyUb4W3yJQG45UeqSErriPwzeBqV25vHr/m8q
	V3n00gBunOIAwsSK89bv3kIxvVUYQYwZfXrUD6XrT+B+t+5fe/n71YN45nTPH1pPSdyQ
	13Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=EIEATNPLpTow1I4w4CsYfTnLO3rHdXwAqUpFh9xYU94=;
	b=ZbsgX77qIBt2DUThjfFygAvU/NJbZylkMKDDs8nSCyaP2RnH92iko+bUpRREv1h4Jg
	ZL4tM7XJR/xbrxXyhZ+lm1FiG4lMJpR68B8W6F2BJSZhWump3gHlR53AgxQm/CNlhxMf
	IWQuQIKzRQSeNNhbCH/HDeOj5gvDgztMHCPir86iJOWrsKzsJfX10/F1orsfWcw0/mh3
	vxFJ1ZekImsjUtb6diqphKWnPwy6o8eOhqaf79El/AjbshDnSyIpHR2IF0BYwfG9KYkP
	aMvW3jpGyTLN52XfQ1OthqeLDMDWqlNcAE9OisnVGv9CFkccSPJwSJEHFVa5xR+ASXaD
	4gpg==
X-Gm-Message-State: AHPjjUj3tHBOodW7p8VkN5YcVN6tes4MP8FoJV2DHGp/xMY9FsEN9j/O
	mPDX6/dGlbTf5bZUVUnGs3XF8ieaWQl01K/maYw=
X-Google-Smtp-Source: AOwi7QDgaJIEDL7kGBmHXjgA+yQKq8XazGxVsQCPkm7wf0EUAIvh0q74UzYwm3ewqzYJSd8dbFzb6pQWIMbjP4BwmRQ=
X-Received: by 10.37.206.136 with SMTP id x130mr3818474ybe.37.1506313384052;
	Sun, 24 Sep 2017 21:23:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.216.86 with HTTP; Sun, 24 Sep 2017 21:23:03 -0700 (PDT)
Received: by 10.13.216.86 with HTTP; Sun, 24 Sep 2017 21:23:03 -0700 (PDT)
In-Reply-To: <CAGsrAHc6G6ukCCZBx9G4kMPaNFepJSUNUa0qM=pu41RzKdRYuQ@mail.gmail.com>
References: <CAGsrAHc6G6ukCCZBx9G4kMPaNFepJSUNUa0qM=pu41RzKdRYuQ@mail.gmail.com>
From: mohammed aqdam <mohammedaqdam@gmail.com>
Date: Mon, 25 Sep 2017 09:53:03 +0530
Message-ID: <CAGsrAHf+NT6BnUsFnzzk=2tO=W3irp0ZeE9qrCX0v8nee5WR-g@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Rasbian type of image
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
X-List-Received-Date: Mon, 25 Sep 2017 04:23:06 -0000
Content-Type: multipart/alternative; boundary="94eb2c1903a82d4ae20559fbea11"

--94eb2c1903a82d4ae20559fbea11
Content-Type: text/plain; charset="UTF-8"

Hi all,

I was building kernel for rpi3 using yocto,I was wondering is it possible
to build a image similar to rasbian,like with GUI and everything?

--94eb2c1903a82d4ae20559fbea11
Content-Type: text/html; charset="UTF-8"

<div dir="auto">Hi all,<div dir="auto"><br></div><div dir="auto">I was building kernel for rpi3 using yocto,I was wondering is it possible to build a image similar to rasbian,like with GUI and everything?</div></div>

--94eb2c1903a82d4ae20559fbea11--
