Return-Path: <andreas2025@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF4A3E00F0E; Sun, 21 Aug 2016 06:55:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andreas2025[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
Received: from mail-ua0-f177.google.com (mail-ua0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B521E00F08
	for <yocto@yoctoproject.org>; Sun, 21 Aug 2016 06:55:03 -0700 (PDT)
Received: by mail-ua0-f177.google.com with SMTP id 97so149877899uav.3
	for <yocto@yoctoproject.org>; Sun, 21 Aug 2016 06:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=ndDi2yFGHEUF92asJrTJ/Y8kX5p7upZre1lHGYIhi4o=;
	b=boc47oAyDm3LAaGiW1u06RPUxj9yX+w2p4aJIo9d6VVhvPvzNh9VXyzZljJw26yQ3R
	nHieEoI/wmfhTTp/EhQmxwnsx1TsFHUXYYfL9nM9vWDOgsW5EBRWzuom0Q6WtIBvBLGy
	XHa78wFalW8qBq2tCSeRRdWn8JMehzOEd2nrc6mk8anQw5Qv+wzWu+WDgzQgohwvkX5n
	HYLCpZDHlyo1pOc0lLXDle9FbO46mjbuLS+gNVynlw7KD6P41pgOpqHgblIUtAAv81x5
	M31bjIDF+9hJf04J1rtkWfttcERuHWAY46aiE9f9zFBNck5V5iBBiCIdUFMMa2mfA+R5
	JnvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ndDi2yFGHEUF92asJrTJ/Y8kX5p7upZre1lHGYIhi4o=;
	b=cSyVbzxFwvJCLBwjNfIVtyrn9neRAIDFQCbyJGCeYeC8oVcjPfLBSohT5BM3Qgjul0
	a1R0V9vdh9g5ysTp3R/iVQAj3ugAo6fNGqNnAj6dWyJa6RziUv5WA2N3L3uTHaDfw7Jh
	bCUOB92rX0ZQxDab/h8L6IX4PSMB7fO/IaNKa/h3dHJSgJeRw3DcCjvDgvcCJ+/I5L2Z
	lsLZg3F2rZjyqd01ANJPCxm0nXMo+14S4xgULUK7cIgcAtk4hJLhqfGaSbvi9pDQxawS
	lQCPRXTKjpRRMfTFmL4wo5NjphjmXpVB83YAdCY7ioLcCKWSS7JeWI6WrZEarv9S8/2Y
	psTQ==
X-Gm-Message-State: AEkoouv83LbjyO2U1jOa2AfjcJh+soHt7SLo6+fqKNqCN3R9haas8CAcVIUvOaQJU6D+Nommu2jrp3J0+AfGlA==
X-Received: by 10.176.5.67 with SMTP id 61mr8733160uax.35.1471787702402; Sun,
	21 Aug 2016 06:55:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.124.207 with HTTP; Sun, 21 Aug 2016 06:55:02 -0700 (PDT)
From: Andy Ng <andreas2025@gmail.com>
Date: Sun, 21 Aug 2016 14:55:02 +0100
Message-ID: <CAAVaN8xtJH-qwxO-n+0z8C8T5axW9iQXV=mvj6-hZxxQay_PRQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: debug version of a package
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
X-List-Received-Date: Sun, 21 Aug 2016 13:55:07 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

How do I trigger the build of the debug version of a single package?

Thank you
Andy

