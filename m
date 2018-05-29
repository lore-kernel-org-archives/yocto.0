Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E5B5E00A75; Tue, 29 May 2018 08:50:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,URI_NOVOWEL
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	*  0.5 URI_NOVOWEL URI: URI hostname has long non-vowel sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8800BE009D4
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 08:50:51 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id j186-v6so19173907ita.5
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 08:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:subject:message-id:mime-version:content-disposition
	:user-agent; bh=1glcvhHcsEDNg5yhkqTr7L2Vy6U0DTUysA1jR4wHfhQ=;
	b=nGLK2JM8t54oq1K65Lbw81aHiYlV8+L1QJEQITG3YnMnokTso03THTDjZikGtMAyaY
	vYv6cvc+pLNeN+LPL9fJhxZ2zIFRXcDPsU4dt5QseBgw9C3eOYnWK6rCNP1Pua+ihzzL
	uf71Ymt+zdmL0ZBpB9qC3sCJbKIS+R3IZkA5It8lI0YiPB3M0ZRQMjh70paO9WfN7y6J
	eAUmSBfOYkVFjz0WtPUuZ/3vLu5ylSpWDi79aLoOenTq1VQXuOyk1HG2Ybkgk4Re+nTx
	4v0yYYrzFFwg52NyfmhrOWIiy7udl7+cFQH05h/iPGHQ/6bIwPVkvVfLfjtOom8ntcza
	B9Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version
	:content-disposition:user-agent;
	bh=1glcvhHcsEDNg5yhkqTr7L2Vy6U0DTUysA1jR4wHfhQ=;
	b=l6ReBWvgFRODaj3rqkAiAcJoQmxTO8ug41bSx9oV4oWzXK/aF6ZWSx01KSP4VUi89b
	Afm70DqA76BY1Va+Xbk2kvKJhiKE7hko6UMQ4360MdJFfoK5Kc7adCKpWwqyK0BkCtDw
	wvKDtoMnoyRo+A9A18Ed1eWLUSIQVyCuSW3i3dEDhtD2yO9la2+pVa5WXh0ocWlnva+k
	EHgc3Y4iuudy3fMG/mjCa7jzSr2t5I0BAWE2Ypnp+lRRRQdkn1AHE16Q21RDPvG5oI+H
	hEXedHToNWqCoreI3q4NPwjaI/pIsvS8AGNM/EHUCQ8BD1e8BpqaOgbxj+dQKYyX/F35
	2SwA==
X-Gm-Message-State: ALKqPwffWsNnSnLvPT9BIKTSXT1Ul/t2QujnxcK3jgguoqapFdBKqIyd
	DAG5euuledsra7akO+doQperXYGP
X-Google-Smtp-Source: ADUXVKIAhxZYup3HSy2L0mwmGaOOoe6P6XFRmHLC1cnKR4y4XMMdyHd+Z5nxmOiEDl//xCpoqFytjw==
X-Received: by 2002:a24:1249:: with SMTP id 70-v6mr5079450itp.82.1527609050405;
	Tue, 29 May 2018 08:50:50 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	z72-v6sm24368868ioz.64.2018.05.29.08.50.48
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 29 May 2018 08:50:48 -0700 (PDT)
Date: Tue, 29 May 2018 11:50:46 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20180529155046.GA24142@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: interacting with patchwork / unmerged development work
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
X-List-Received-Date: Tue, 29 May 2018 15:50:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hello,

One of the minor inconveniences with submitting patches to this project, is to
work on a patch against master (for example), submit it, then find that
yesterday someone submitted a patch against the same file you're editing
causing your patch to not apply with what the maintainer is going to test.

Do people have tricks or workflows for syncing their repositories with, say,
master PLUS any patches which have been sent to the list since the last time
(in this case) master was updated?

OR: is there an easy way to retrieve what is going to be tested in the next
test cycle?

OR: would it be possible to tweak patchwork such that all received patches
could be automatically applied to a given branch? Developers could then work
off that branch and have a better chance of being in-sync? Maintainers could
then prune that branch, removing any patches that have been rejected or need
more work.

I dug around and found two command-line utilities for interacting with
patchwork:
	- pwclient
	- git-pw

I can't seem to get either to work.

Using the following ~/.pwclientrc (which is obtained from the OE patchwork
server itself: https://patchwork.openembedded.org/project/oe/ and
https://patchwork.openembedded.org/project/oe/pwclientrc/)

	[options]
	default=oe

	[oe]
	url= https://patchwork.openembedded.org/xmlrpc/

I get a timeout error:

	$ pwclient list
	Traceback (most recent call last):
	  File "/home/trevor/local/bin/pwclient", line 10, in <module>
	    sys.exit(main())
	  File "/home/trevor/local/lib/python2.7/site-packages/pwclient/shell.py", line 190, in main
	    action_list(rpc, filt, submitter_str, delegate_str, format_str)
	  File "/home/trevor/local/lib/python2.7/site-packages/pwclient/patches.py", line 114, in action_list
	    patches = rpc.patch_list(filter.d)
	  File "/usr/lib64/python2.7/xmlrpclib.py", line 1243, in __call__
	    return self.__send(self.__name, args)
	  File "/usr/lib64/python2.7/xmlrpclib.py", line 1602, in __request
	    verbose=self.__verbose
	  File "/usr/lib64/python2.7/xmlrpclib.py", line 1283, in request
	    return self.single_request(host, handler, request_body, verbose)
	  File "/usr/lib64/python2.7/xmlrpclib.py", line 1331, in single_request
	    response.msg,
	xmlrpclib.ProtocolError: <ProtocolError for patchwork.openembedded.org/xmlrpc/: 504 Gateway Time-out>

For git-pw, it always seems to want a username/password, regardless of the
operation, even though listing or retrieving patches shouldn't need a login:

	$ git config pw.server https://patchwork.openembedded.org
	$ git config pw.project oe
	$ git pw patch list
	Authentication information missing
	You must configure authentication via git-config or via --token or --username, --password

In any case, even if one of these were working, I'd still need to be able to
generate a list of patch IDs since the last test. I have no idea how I'd go
about doing that since I don't think the last accepted patch ID is known.
Also, a list of currently-accepted patches isn't given anywhere either (that
I'm aware).

Any thoughts?

Best regards,
	Trevor

