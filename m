Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCA88E00ADF; Tue,  1 Dec 2015 07:26:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.50 listed in list.dnswl.org]
Received: from mail-lf0-f50.google.com (mail-lf0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE8E5E00ACF
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 07:26:16 -0800 (PST)
Received: by lfaz4 with SMTP id z4so12950914lfa.0
	for <yocto@yoctoproject.org>; Tue, 01 Dec 2015 07:26:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=D/N6v+oqKgV/Jbkv0b56LgpB3+DXV9WY8R1xCx4uHpk=;
	b=tMSLlXCtXXNMiya2qe38pmu+5ghSfMi9XAAwIoC2izIxD9V60pdG55C5qxj828Z2Sl
	l1avkguACnF0VHyCoO1MNkXxfVUCvxo0/K6iOu0hGieuBafdHJxmSOuRxehj8/6bXRzT
	PQrsbbqzN4hbdXbS8N0sUfUFOnMenQ+E6BpXwNziGczWInLNjcZQbA9nZLeI3BuQDXyz
	0aIzCGSf3H8r7NKBZr+8+fKgqVB742jz/XKf/iOjo19SjpwDWj8iRtoqcW0FCXjaRRvv
	URmNoHb71SGKrzbNJFKXtKsQ0xXo7WmOC1SmzDFRIiEji+mD3sV/nCX1VCK3y4OUij5h
	xS/w==
MIME-Version: 1.0
X-Received: by 10.25.137.7 with SMTP id l7mr19973376lfd.63.1448983575984; Tue,
	01 Dec 2015 07:26:15 -0800 (PST)
Received: by 10.114.11.226 with HTTP; Tue, 1 Dec 2015 07:26:15 -0800 (PST)
Date: Tue, 1 Dec 2015 09:26:15 -0600
Message-ID: <CAOsp8o_WfYUB2nBXmGdVTF27RmkjzbvYJrHrW+R-Lv-P8WzS3A@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: yocto@yoctoproject.org
Subject: Best practice for files copied directly into sysroot?
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
X-List-Received-Date: Tue, 01 Dec 2015 15:26:20 -0000
Content-Type: multipart/alternative; boundary=001a113fc2605501e70525d7c789

--001a113fc2605501e70525d7c789
Content-Type: text/plain; charset=UTF-8

I am working on potentially migrating our distribution to Yocto (will be a
long, long process). We have an area of our filesystem where any file
placed will go directly into the rootfs of the target. This works well with
our product, as we have certain binaries and scripts that need to be copied
directly, and there's no other real step involved (no compilation, etc). Is
there a best practice or existing class that handles this? I saw mention of
a binary/ directory but I wasn't sure if that was for this or something
else.

Thanks,
Michael

--001a113fc2605501e70525d7c789
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am working on potentially migrating our distribution to =
Yocto (will be a long, long process). We have an area of our filesystem whe=
re any file placed will go directly into the rootfs of the target. This wor=
ks well with our product, as we have certain binaries and scripts that need=
 to be copied directly, and there&#39;s no other real step involved (no com=
pilation, etc). Is there a best practice or existing class that handles thi=
s? I saw mention of a binary/ directory but I wasn&#39;t sure if that was f=
or this or something else.<div><br></div><div>Thanks,</div><div>Michael</di=
v></div>

--001a113fc2605501e70525d7c789--
