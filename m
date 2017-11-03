Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5DC5E00D1B; Fri,  3 Nov 2017 09:20:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.47 listed in list.dnswl.org]
Received: from mail-pg0-f47.google.com (mail-pg0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79D19E00CFF
	for <yocto@yoctoproject.org>; Fri,  3 Nov 2017 09:20:45 -0700 (PDT)
Received: by mail-pg0-f47.google.com with SMTP id m18so2858826pgd.13
	for <yocto@yoctoproject.org>; Fri, 03 Nov 2017 09:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=PZt6bl6yepwegs8HiiseLwJQm7/i7K59xbGoIJn/Ud4=;
	b=WEZu/P35Oa2F9N8NxrkGMjyOfd9RNWXjy0ztVMx/Y24tLPssICnsUqAsmWr+4+HuJB
	rR49Fm69mkFRfX0uS8t2UtG0ME+cia1/nRlsXSbZVyUOPjj+QYEfuX5dEJ/PHc7YYPfV
	FAVT27vjPKiklV8uTyhsQE9rW7wzvsxN8MEwLOmXaJxD6iRk9XkxNxQ8zGTSfeLhCkfO
	0gAwNHMlEykFMwlNcBREAwHkLm+GpyPzvEEPzF6P36M4LTWuOnnHRIlAhlyq4W8IVK34
	RK3rNnGUb18f//xh7l7SdSzkbj6FZWAo/uJrt3vaS+EfU/TOwnxK4JUtciXtrYzMxP+X
	pYdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=PZt6bl6yepwegs8HiiseLwJQm7/i7K59xbGoIJn/Ud4=;
	b=f8/QHR1TVhNKEHKZSu9yxSJb5eX+F/poUOqqxtIH979Rxmd2YIM0SnesYXmjG0/QXf
	ZykitqyT85n5yMQENefXW1XvPKsIBX4DjIsWkHk1YF2SWmyNTACAgDqcMvb7X6qny7A3
	Ha9VY8pXRvE3ETmePYKr6OPWg+BETiR9yF/TZVzpNgRodAzzllHlnPSC+U+49W6AqJOJ
	aD3xxT6pwR2vxzU6m0kSrUSH3wrhERNOqYwz6gS4FlESOnzscJ8o0F+ZYLdDLu5+y89t
	IEGKasiB0PpxAtnKetB/DQtpQnNw8NioH4Xw2tJTtGXlkIPwWW+YQyJzuzJytqP/GT9b
	Mg3A==
X-Gm-Message-State: AMCzsaVDrDP8XIpQRaGq4p8bKmLGBGrHvRp9zR6jTIohk3QhB1xYkhzv
	To4gBJ9K9bjTgzCwE9dHsO/VDA==
X-Google-Smtp-Source: ABhQp+Sc1DAAH4yMPcU81HDX/6wAL26rq8pp7ZqX5qMElNNDijt9QfameQmcFGpG3ItkZ2CQNXC/bQ==
X-Received: by 10.101.88.140 with SMTP id d12mr7753197pgu.166.1509726045364;
	Fri, 03 Nov 2017 09:20:45 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:78e5:dcc3:4839:af44?
	([2601:202:4001:9ea0:78e5:dcc3:4839:af44])
	by smtp.gmail.com with ESMTPSA id
	v85sm11361377pfi.71.2017.11.03.09.20.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 03 Nov 2017 09:20:44 -0700 (PDT)
From: akuster808 <akuster808@gmail.com>
To: openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <8075716d-066a-ec38-3787-fd64bb9c61d5@gmail.com>
Date: Fri, 3 Nov 2017 09:20:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
Subject: [RFC] stable branch naming scheme
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
X-List-Received-Date: Fri, 03 Nov 2017 16:20:46 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hello,

The problem I hope to solve is that a Maintainer can stage changes in
any branch in the contrib repos making it difficult for folks to track
their back port requests. The also makes it harder to automate any kind
of build automation.

I would like to propose a contrib naming scheme for the stable release
branches. I am thinking of the following:

stable/{version}-next or {special char}_stable/{version}-next.

=C2=A0=C2=A0 "version" is either the code name or numeric like in bitbake=
=2E

=C2=A0=C2=A0 "special char" would be used to have these branches at the t=
op of th
list, if we wont that.


We can apply this to all OE / Yocto repos that have stable branch
maintenance process.

If we standardize on a naming scheme, We can then document this so
contributers can monitor their requests more easily. The community can
see what changes are being backport.=C2=A0 This will enable the possibili=
ty
to automate builds, etc.=C2=A0

let me know what you think.

Kind regards,

Armin




