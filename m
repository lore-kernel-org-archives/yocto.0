Return-Path: <john.tobias.ph@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6EE5E00A0A; Fri, 21 Apr 2017 13:42:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (john.tobias.ph[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB25BE0083C
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 13:42:11 -0700 (PDT)
Received: by mail-qk0-f170.google.com with SMTP id f76so178012qke.2
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 13:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=CiFYVANoUxL5PuJY2LKf1VHIvIoi8wvT0/z0NZkV50E=;
	b=UDtuGONsd2hquaMh+t93U9QNRlugfvOhYN1JIgYZbpDoY/mDl+9ozplzZNvm4CB47Y
	zH4rsFhBkm9dleYysS42hAgtql1466YHndgzl+82V/unPSCwecSp6GNUx9HSR/Zr8nBL
	7ixdHtEIMfKqgG9MEjbFjajBN8rdC9cU9JqCzjMhN4wUXlhIs9c1KAKXsRTmoAAxVgxt
	CJnFkT23VYv4fpgUIJ89mVpuTqYHR7phXHoJ+h6O/HQSELPF2Q52epgqq+F9Bb8PHmwM
	if7rYNCrRoc4uXiHZnSkdXe2FD3s3ybYbds5z7lk8ajO4vuZAL8h2LdJnYRmnP4oAB9y
	TQbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=CiFYVANoUxL5PuJY2LKf1VHIvIoi8wvT0/z0NZkV50E=;
	b=LgQSMG17FFomUxCtCP2ydZZxIHv+cSl0C+KBN8+/DckL/eW03r8EAddFuQXWdIQQEr
	5WsOgf7FDSo0GgnPXKXonDPGlf+ul+afb0i1ZY8fIYOVK2uFlPNTQymHf7uFN22OCXok
	O8oQFS5ZBggY2nz/EI/T+uz61BKISduhdfZ7q2iWuIS7UccI5BsgTP5KuNy6f1UN/23r
	iKU2ZKEOCCCeM5QG+QtLlXC7dHbMv9ekekj54B63iNCWGcqyRvtZfE26db/Fg+P2Twsa
	0etSrRavD643/wMgM/ReQ6PfEyKmU9yiObslr48UcF/IxpLfFQhTi3rWUgoWVrRwncsK
	DLuw==
X-Gm-Message-State: AN3rC/4pXesQ6cTTozJkNo9n46RgnOpRbqBlQIzpSAHTgRhslQwuJKqv
	KVTrlF0aKogG+37ZDXEv9siddc6hdbLh
X-Received: by 10.55.65.65 with SMTP id o62mr16210822qka.52.1492807330692;
	Fri, 21 Apr 2017 13:42:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.98.69 with HTTP; Fri, 21 Apr 2017 13:42:10 -0700 (PDT)
From: John Tobias <john.tobias.ph@gmail.com>
Date: Fri, 21 Apr 2017 13:42:10 -0700
Message-ID: <CACUGKYM=Te-DgQVM=ZgapRqBZZpjC8QtQPgnX305GSrsgMABOQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto autotools for shared library using eclipse
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
X-List-Received-Date: Fri, 21 Apr 2017 20:42:15 -0000
Content-Type: text/plain; charset=UTF-8

Hello All,

I am using eclipse "Luna Service Release 2 (4.4.2) and Neon.3 Release
(4.6.3)". I've noticed that the Yocto plugin doesn't have any support
for shared library project. Is there any plan to support it in the
future?.

Regards,

John

