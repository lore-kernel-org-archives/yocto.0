Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B252E00D28; Fri, 15 Apr 2016 06:17:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51884E00B6F
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 06:17:28 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id n62so30400738vkb.0
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 06:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=i36No/AZmlvHWLRfBN8nhezHXvrhJRlV/z4I6IQgMEM=;
	b=Qq38O8nZaFngBawZ6R0+qlzbeM4PsBRUvaKTfcOP/sYwg9jYEJ9RJfsodsVvNkHYpd
	VVwPlGokIAFei/QkuemjtHKsJclXYGlouEJWO6rfz899d5g2NSD1vka/XW0PK679tlsA
	RA1DGAn4gfB4pEE2SySIScjsSUF2Q/X3hCMpxj3vOArMTHROCQTU72StKARv16vzuVi5
	5+5COFjo3mtH545zmkU2L2m8KJAu4GVhQMc18rCLiGyv5fTZHe8sh/O+kFGOe08hV9F2
	p77XKRU6DXwYGSJ5SxnHovaLocKlPyjD31IRIJ0X1+S3vVfkgVcRNxD0HPYRN5z2bb0R
	ahyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=i36No/AZmlvHWLRfBN8nhezHXvrhJRlV/z4I6IQgMEM=;
	b=TcnfhIxQAuFCyknIvLamu2/U9YLCym97peylqxNelXteNJtJtg2t92wnJc3Cuoa7C5
	NT3gA7HmXanPXeIDDsS7pBxC1oEZePuf1P1TEYfpazB2ElRQUXuIou85LRIsefhD4SkC
	LBrh0OI0fmEbT0qBPb4bV/EK4peQCeR4WPmn7heVp/QpaIdl8KyNmJPjnouLhn8L06j1
	vyugomgRgtnz2BjgSXvKvWUgdOnp02nEYBCU+QhgTl/MYomExCEqjfklFZ9qcdSYvqo3
	yitQMkEqFdVd0hedO9W6fQj++kVC+VGs4SqcNCGnVXZTCNm0qMfpcwQGP0DYrDJTE5VH
	ZE7Q==
X-Gm-Message-State: AOPr4FURzdSuPEnExKBUJ5tw1nz6g+KCH3F2VoYDtwZVKQD9ya1626qCFpFIq1koeB2UQRr7Up2EMr7rMDayGw==
MIME-Version: 1.0
X-Received: by 10.31.165.148 with SMTP id o142mr10589701vke.62.1460726247589; 
	Fri, 15 Apr 2016 06:17:27 -0700 (PDT)
Received: by 10.176.66.227 with HTTP; Fri, 15 Apr 2016 06:17:27 -0700 (PDT)
Date: Fri, 15 Apr 2016 10:17:27 -0300
Message-ID: <CAF3SDA4QzgwZX=ULh9-u+x2GfjpPm1Mjx_EFAS84SYuqCDV8dw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: How to add libraries to toolchain
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
X-List-Received-Date: Fri, 15 Apr 2016 13:17:31 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I have some piece of code that depends on ncurses. While I can compile
it using tmp/ folder toolchain (meta-ide-support) I can't with the
installed toolchain (meta-adt-installer) because it complains about
missing ncurse.h header. How can add libraries and headers to an
installable toolchain?

Regards,

-- 
"Do or do not. There is no try"
  Yoda Master

