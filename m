Return-Path: <hans.beckerus@gmail.com>
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE2A6E0172B
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 01:28:39 -0700 (PDT)
Received: by mail-ob0-f171.google.com with SMTP id wn1so5499343obc.2
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 01:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=6/c62xSHwUMyNAaYRjY2lHq+LXS1J5bmHtgUdi9FKVE=;
	b=egdEVx1nsk2zSkSUFcvdMZ04hsxWL6y6zd2Q4hPVZDRtuIkb4xkSGr6d5b2Nh6WNcH
	QjUmYmZKREZuP9xtrswVZuMJKDitHnL5QQWIjXOm57lPk4PMSaE/Dj4pZAD1b6dG12Ta
	M46y5leLZ063Gf4H4bDhhmFs/pN+HOmcl2KL45or8XYG0D5prOBzED9TLpE9xYj/bP6f
	gfe1lwVq4Z0Kvaq/+U4fn5GM3PgGxc5MYYZyMvxBBIOexRw+sHj+pp/OgXPjUfjiDAch
	09bJmKSvdtxbMEFvmN6cjsvSBJEj6rXuSjeTLUPiS+HRDYVzHN0Pzj3bxoFjUwtaL5GL
	2TAQ==
MIME-Version: 1.0
X-Received: by 10.60.58.10 with SMTP id m10mr390335oeq.61.1382430518727; Tue,
	22 Oct 2013 01:28:38 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Tue, 22 Oct 2013 01:28:38 -0700 (PDT)
Date: Tue, 22 Oct 2013 10:28:38 +0200
Message-ID: <CAFyqS9oRTjDMHj=e9inCN7RD52BuHOGA16+Ko+326BLkV3pFDQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: lttng uplift
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
X-List-Received-Date: Tue, 22 Oct 2013 08:28:43 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi, in our current tree lttng is on a v2.1 baseline. Are there any
plans to step up to a later version, such as 2.3 any time soon? We
need some new features coming from that version.
We are currently on Yocto 1.4+snapshot-20131022. Or should we start
looking into doing this in our own meta?

Thanks.
Hans

