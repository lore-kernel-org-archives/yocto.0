Return-Path: <tfroehlich@archsys.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA65DE00D08; Tue, 26 Mar 2019 13:54:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38EBAE00BAF
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2019 13:54:31 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id h39so16394126qte.2
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2019 13:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=archsys-io.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=ML062JFMoNNiFJoY8ltk4bnKG1iXSbHbY1V57RhJ2GM=;
	b=BK64L6f+cLiqEYbKpz3XGl5HesJK7EhBVnC7csFrA6i5rJQJweC7hHRzHaJRb7F0sq
	BSkMSOAXAI09hYccik8un8xwFsXVKSqWnATVxjXl5eubZCET2t6gTHV6td7Uj7CgV5VG
	6Etom3hhqMkZN3c+98sM9JN8NQluRaiIfn9ZVNAaGEONO/uex8pNHUIz6xqKxSfc4n3s
	hHEUCTWCxDJWtzd07rMq6unGh7l6d4bgR+G1iKWKediPFm7fhpd/vfQw9LUMVblIQFiz
	jYKEh02TIag2p7yrfYExV+yVtMLv4DRjJeB0Snbna1omMWqNFHMZzrAFOvHvpW0RSqn5
	WtYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ML062JFMoNNiFJoY8ltk4bnKG1iXSbHbY1V57RhJ2GM=;
	b=jIfjgICxe/2fg8GGkzIyR7r0x0I+DvVqYpP2yBIy1wtOO0Vtnhai1ePr/Kgu1F03hy
	DeQco884AB9Poj/fCw8v+b2AIJ62Ckx0YSKdZBaY6YBVa7IYqP4kZeB8xjnA8B/oooRy
	ZwxU1sYOQqN4OnXeW7jPK1KpAIsdbD4YPv63tnpIMj1lh364w2PGDYF9qpwdGl7MAw//
	gN/li8wr+dnvMJGQN4tx7NMpCVWmkwYrGUqTqDR0fiU/6PPgGEaBs7O+y315eznmH33V
	b4kaUmnDJUNsWg6HVSxbGb4p7wyCsEg7sQEX5Yvvpu9v7OdDN3xFt1dbL5UXl5DIL/hV
	g8bw==
X-Gm-Message-State: APjAAAUqISIVsLuU2NZbmmun5E6iV46vUaWUZOPtJzg2t56sbtQ6SFMk
	EnJ7II0Gq+lOaVhmX++367zH24ukRU4YFC2hbZ0asvN/FPIfcg==
X-Google-Smtp-Source: APXvYqy3e7O73tNkrrWjIziV6FIX/NRDkZ0kqrsfBuJqJ0X/0r7i4ukEXKPbB0EMHgluPqj0/RSgRcEMPdWwHfVL+s8=
X-Received: by 2002:ac8:28e9:: with SMTP id j38mr27379530qtj.297.1553633670588;
	Tue, 26 Mar 2019 13:54:30 -0700 (PDT)
MIME-Version: 1.0
From: Timothy Froehlich <tfroehlich@archsys.io>
Date: Tue, 26 Mar 2019 13:54:20 -0700
Message-ID: <CAHSUxjSN+Soqe+rBqbCzfF9ZVO-Wjk=QeY0EjpaaSMdHNcdQnQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Read-only filesystems: Move directory to RW directory and symlink back
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
X-List-Received-Date: Tue, 26 Mar 2019 20:54:32 -0000
Content-Type: multipart/alternative; boundary="0000000000000c029c05850587b6"

--0000000000000c029c05850587b6
Content-Type: text/plain; charset="UTF-8"

Is there a recommended way of doing this? Right now I have a
ROOTFS_POSTPROCESS_CMD that moves the directories and symlinks them back,
but I'm not sure if I'm doing it exactly right or if there's something
built-in.

The function just does a bunch of this:
    install -d ${D}/${persist_dir}

    mv ${D}/${ORIG} ${D}/${persist_dir}/${LINKNAME}
    ln -sr ${D}/${persist_dir}/${LINKNAME} ${D}/${ORIG}

-- 
Tim Froehlich
Embedded Linux Engineer
tfroehlich@archsys.io
215-218-8955

--0000000000000c029c05850587b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Is there a recommended way of doing this?=
 Right now I have a ROOTFS_POSTPROCESS_CMD that moves the directories and s=
ymlinks them back, but I&#39;m not sure if I&#39;m doing it exactly right o=
r if there&#39;s something built-in.<div><br></div><div>The function just d=
oes a bunch of this:</div><div><div>=C2=A0 =C2=A0 install -d ${D}/${persist=
_dir}</div><div><br></div><div>=C2=A0 =C2=A0 mv ${D}/${ORIG} ${D}/${persist=
_dir}/${LINKNAME}</div><div>=C2=A0 =C2=A0 ln -sr ${D}/${persist_dir}/${LINK=
NAME} ${D}/${ORIG}</div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gma=
il_signature"><div dir=3D"ltr">Tim Froehlich<div>Embedded Linux Engineer</d=
iv><div><a href=3D"mailto:tfroehlich@archsys.io" target=3D"_blank">tfroehli=
ch@archsys.io</a></div><div>215-218-8955</div></div></div></div></div></div=
>

--0000000000000c029c05850587b6--
