Return-Path: <jonaskgandersson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A45B7E00D12; Mon,  4 Mar 2019 13:46:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jonaskgandersson[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
	[209.85.208.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 352E7E00BCC
	for <yocto@yoctoproject.org>; Mon,  4 Mar 2019 13:46:23 -0800 (PST)
Received: by mail-ed1-f41.google.com with SMTP id p27so5483990edc.6
	for <yocto@yoctoproject.org>; Mon, 04 Mar 2019 13:46:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=B9H8YBcyIusekIEY7VMhpxOtLjwi8Ems4OF2iAxdqKA=;
	b=rJaJNR261wi15/xR/BUbdCJRfVvJoXQvUFqVZHCObi0GDvfGQpnJJDld6iWaSpxarl
	IW2/mmFlBwzSA1bVY7TW4uXeC3v95ZyNHGwPhv9HHc6mw3DMx9ZFVaQDfx5pYy/1ndf0
	UZhb5jZgd42X6X8rfaVvw9lpX9DvqajI+XyIsc3KxksFbAQOJDFyzQQdkSSGX7PU7y06
	m/fGuQ1ecwuLqETtxKC6TBNQjC4HJ8Zrq5Me51AtOq54tp01PDvRN4f+F9ZmQ9gcZQAC
	kIwNNymiy8M9+poxJDgJ+pPC0SxZvC6LAeuvKzZ3RgQEdd5KGzgXz6YSu2I0DAKXfsPw
	xHBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=B9H8YBcyIusekIEY7VMhpxOtLjwi8Ems4OF2iAxdqKA=;
	b=smHMBIpskw574YQD4zXEEA1CO9c7ldw7TwbKETs/x7ri+nw1cG6Tnr9KanghkP/KWt
	mCeHW7TBIOqL8ihMrEfVStaqAcAZPteWMJ9kVPBflWXL2bwqlQISV+AUTDAdOa3F5Sw8
	fYcFw7Xb7q+mLyXfngW/SPLxiaGLmqPt3tvbfpxuVhwNXbSjCNJrnkb3hPEBcn2Q53AY
	lHSCBGibsICcU2g6hPoWDVv2Z7ET4hvLUXRapPzvkgf/AERo4KDjmRaU1Fm9YFwe7c5z
	MC9ZSmqWhLkz3o39z2qJMNMJDawOewsV7E2zOzOJVRExGVqGsYgryCmdzWYyjjgPqAHF
	8hJg==
X-Gm-Message-State: APjAAAVUP3UmMq6gV8J1ZkQ+scsUD8tVn0qnZjvF2DknJZJaxZkh16dA
	RGkN6Wp+hHQ3S73TwpK8Er/t9xYTA4+PU6xFmWKniQ==
X-Google-Smtp-Source: APXvYqz00dHJX5WvrPY7FynlxiapmzCJQCjmlniyGjKZQYzhnjl2P28Vr60zkZSd42PpwOW6HoaAwS867Z+pSBze6RM=
X-Received: by 2002:a50:ac3d:: with SMTP id v58mr16699287edc.263.1551735982958;
	Mon, 04 Mar 2019 13:46:22 -0800 (PST)
MIME-Version: 1.0
From: Jonas Andersson <jonaskgandersson@gmail.com>
Date: Mon, 4 Mar 2019 22:46:10 +0100
Message-ID: <CAKpuFdcLgRthdgOVV+Pcue9tpB5LrSd8yCScV=BNm-MDZz7oNg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Best practice dynamic service file
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
X-List-Received-Date: Mon, 04 Mar 2019 21:46:24 -0000
Content-Type: multipart/alternative; boundary="0000000000000cac6605834bb019"

--0000000000000cac6605834bb019
Content-Type: text/plain; charset="UTF-8"

Hi,

I have an systemd recipe to start an application as a service, i have
included an service file.
Now I am looking for an solution to be able to set settings in the service
file from Yocto variables, i have found recipes that use python to build
files during build.

What is best practice for this?

/Jonas

--0000000000000cac6605834bb019
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have an systemd recipe to start a=
n application as a service, i have included an service file.</div><div>Now =
I am looking for an solution to be able to set settings in the service file=
 from Yocto variables, i have found recipes that use python to build files =
during build.</div><div><br></div><div>What is best practice for this?</div=
><div><br></div><div>/Jonas</div></div>

--0000000000000cac6605834bb019--
