Return-Path: <valentin.lebescond@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EF74E00AEB; Thu, 15 Oct 2015 05:57:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (valentin.lebescond[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f43.google.com (mail-lf0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94BEBE00A49
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 05:57:09 -0700 (PDT)
Received: by lfaz124 with SMTP id z124so27075288lfa.1
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 05:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=z0P0reot+cyxXsCjuxFWZZyECIPABucR5FjUVwlhMc0=;
	b=MmWO1Ur06TC9s/ICNZ3mm1Ch68jwsI0yfUYu1vsC0aNjRzSKoG2TeWjqjBnNM8Vxxm
	oDpTWoD9XqQ954jL7/M9B1PdmkrTrr9OVxcn4j/XQeQluZqAzx0wN7zA6W11j6K9Ua3l
	aW7FLLfy5dDlqD9RX8ZZmHlkRR5tnIz/7EGc6OVFncxgCXP5TIESwifgLqdsb8x5gNqr
	OAXbiTFN3nbyge7ttDgJgYs94UupRoJpl9KMB1Umv02/AeXlD6FN7SWE9VZuWFbeS4k5
	bt51dxOL+i3px0GNL8LAlL+oX4zYHME1cpwt1cac5IzoAAkFaN62pgk7It6X+sSz6rCh
	EysQ==
X-Received: by 10.25.142.203 with SMTP id q194mr2903818lfd.83.1444913827129;
	Thu, 15 Oct 2015 05:57:07 -0700 (PDT)
MIME-Version: 1.0
From: Valentin Le bescond <valentin.lebescond@gmail.com>
Date: Thu, 15 Oct 2015 12:56:57 +0000
Message-ID: <CAP2S6e4fF+JnZOhcyve8ACOWaNxbR6ZFLoyozR-4h57BOtiWCw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: how to deploy gdbserver ?
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
X-List-Received-Date: Thu, 15 Oct 2015 12:57:14 -0000
Content-Type: multipart/alternative; boundary=001a11401cfc65ac61052224370a

--001a11401cfc65ac61052224370a
Content-Type: text/plain; charset=UTF-8

Hi everyone,

I want to be able to debug my target machine (raspberrypi) remotely through
qtcretor on host.

I can't seem to find a way to deploy the gdbserver software though.
I built the gdb-cross-arm but don't see any gdbserver on the target with
hob (poky 1.7.2) ?

What am I missing ?

Thanks


-- 
Valentin LE BESCOND

--001a11401cfc65ac61052224370a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi everyone,<br><br>I want to be able to de=
bug my target machine (raspberrypi) remotely through qtcretor on host.<br><=
br>I can&#39;t seem to find a way to deploy the gdbserver software though.<=
br></div></div>I built the gdb-cross-arm but don&#39;t see any gdbserver on=
 the target with hob (poky 1.7.2) ?<br><br></div><div>What am I missing ?<b=
r><br></div><div>Thanks<br></div><div><br></div><br></div><div dir=3D"ltr">=
-- <br></div><div dir=3D"ltr"><div>Valentin LE BESCOND<br></div></div>

--001a11401cfc65ac61052224370a--
