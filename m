Return-Path: <rail@esenciatech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BA1AE00CF7; Fri,  1 Dec 2017 12:41:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f169.google.com (mail-ua0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 271ADE00CE8
	for <yocto@yoctoproject.org>; Fri,  1 Dec 2017 12:41:15 -0800 (PST)
Received: by mail-ua0-f169.google.com with SMTP id i20so6776672uak.6
	for <yocto@yoctoproject.org>; Fri, 01 Dec 2017 12:41:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=esenciatech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=OIx9dklDqCyMIYr9t24yg26vuhLSwJZsd9hNsOXqMJE=;
	b=rpb06ANx+ilKWLUcaXl7gwY7YNxP5B9GI6GaZEThveJo2o50qqQWL5rj9ckMnwrLZh
	5EZ8RG9KazkB29LcN7Z1E2yPgTwtLTJgTPTM6FTrUjA+RviFm7DTG2o4GWI4M+LB3amI
	yw8lb/9NX97x8fPhbuH7JvpMYQEYmWUpIxjcWldstkahcm7+g0q0fBGJhjmG5gfTjBnS
	XT4iAi35/F2RQR1VN3keuGjWICm7uAawkgESIiq5gzuqzYzw9z9lBT6h920H3KlC0nZw
	KvKfl5i+IDErrmHl5gJkIfkUUXstKjJqHLfiXU4vBoq0HKg1sO9t4D+I8sKLDj18SdxX
	NjNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=OIx9dklDqCyMIYr9t24yg26vuhLSwJZsd9hNsOXqMJE=;
	b=TT97Q30L5VDw2axfKPb07xfh3xe0dVw6IHcv+iIxxavUAEMTpmJwsmncLfTk/zoyEj
	yfDfJ3Egip7jVN9F/1bR8VkQw0DPrPMNdlR2vGdqs4/WE4bgjjc32yip0Dt3P4EhJK67
	T3c7TfwWa4Qq9Lq3SPbAkxAzGpYi0bSJ3Gw6ytV5DLmFU/O9iALar68wkg1PR8XbYaWD
	6DEH+lJ4Astcam4ku8q6A9EvGknuqOpLjJMFgnswn5uC1exZGWclI+AGBr701nhtpIWG
	jAGXdHpysiosImoQA7DTirZKhjJvBSg6or2VMDgpqHH3CtYjIqhT3orCemNetIPh+f+K
	gvvg==
X-Gm-Message-State: AKGB3mIPXrpoKXL9KBpwE+YUf6euN98ijLkpexHiOltQrmXHsbOmp7vd
	WjiUfkIiDGWbxpg7xiEOjKLKCVJyfYK+ahpZj71lcTkiM57snCe9fhSxXTAl0pVe/kx+kfy2m/O
	ZSIjuQGSDjLqRsWrYmXjhUNLI8A==
X-Google-Smtp-Source: AGs4zMbO+1zTaXRUMeCOlEGjOBZdamg+Jsw9DY6KyOQWhwKQokK03DBT9QGH+/83iKaDV2CZDOOK97kiZxkMPSTxS64=
X-Received: by 10.159.37.69 with SMTP id 63mr5515027uaz.12.1512160874891; Fri,
	01 Dec 2017 12:41:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.95.198 with HTTP; Fri, 1 Dec 2017 12:41:14 -0800 (PST)
From: Rail Shafigulin <rail@esenciatech.com>
Date: Fri, 1 Dec 2017 12:41:14 -0800
Message-ID: <CAOLNbFam6L17D-sfHFnuJsQarjZzoV6ca3iWCGwe+fJNNEfQBg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: include and a library dependency in a recipe which uses a Makefile
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
X-List-Received-Date: Fri, 01 Dec 2017 20:41:17 -0000
Content-Type: text/plain; charset="UTF-8"

Somewhat new to Yocto.

I have a relatively simple Makefile which builds a library. The file
is shown below:

LIB=PyAnokiWave

It is shown below
# Add any other object files to this list below
LIB_OBJS = libPyAnokiWave.o
LIB_HEADERS=libPyAnokiWave.h

CFLAGS+=-I/usr/include/python2.7
LDFLAGS+=-lpython2.7 -lAnokiWave
all: build

.PHONY: build
build: $(LIB).a $(LIB).so

$(LIB).a:$(LIB_OBJS)
    $(AR) rcs $@ $(LIB_OBJS)

$(LIB).so:$(LIB_OBJS)
    $(CC) $(LDFLAGS) -shared -g -o $@ $(LIB_OBJS)

%.o: %.c
    $(CC) -c $(CFLAGS) -o $@ $<

I need to use this Makefile in a recipe which but I'm struggling to
figure out how to make it point to correct include folder as well as a
library folder.

Here is what I need to change:

1. CFLAGS+=-I/usr/include/python2.7

Clearly it is not pointing to the right location. How do I make it
point to the include directory of my build (at least I think it should
point to this location)

2. LDFLAGS+=-lpython2.7 -lAnokiWave

I do have a meta-python layer and it builds python2.7 library. I also
have a custom layer which builds a libAnokiWave.so. How do I make
compiler/linker point to the right folders so that these libraries
would be used? I do understand that it has something to do with the
EXTRA_OEMAKE variable, but I wasn't able to find a good example that
would show me how to use it.

At the moment my do_compile task looks like the following:

do_compile () {
    oe_runmake
}

I would greatly appreciate any help with this.
-- 
Rail Shafigulin
Software Engineer
Esencia Technologies

-- 




*ESENCIA TECHNOLOGIES, INC.*3945 Freedom Circle, Suite #360,
Santa Clara CA 95054
________________________________________________________

Phone: +1 408 736 8284 Fax: +1 408 519 3475 
http://www.esenciatech.com | http://www.lnttechservices.com



