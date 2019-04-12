Return-Path: <gruntblue@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02964E00B1B; Fri, 12 Apr 2019 06:26:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gruntblue[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.47 listed in list.dnswl.org]
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com
	[209.85.222.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99206E00AB0
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 06:26:23 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id b8so3214677uaq.7
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 06:26:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=U0YesWCn29JszDYo1alIhjiwZuTbW+pemkdtE3diBAk=;
	b=lMWuYfUlOREkKSq9623SGMCzkclDs7PddRC5rrZz0ZXSHjZg3P5AcV6MQm2Okf9Z5D
	Rb1Ak0uIoDhqpiLpD4l/rpX2Etjc67JkIH7KPnNKCX2fX3kNFYnQAg75lin9QlK8AulV
	gN/F7q262u50ABHAWAwVuOoqSYHFAqlmEUGGb+etZy3e1SP5ohqiEPwWp3qaX8bIeav8
	eYHNeJb2UDa6s2wl2ixjdiaQd/Gt8t0nDUY2CrOGaN5vWx/lZpfK7QtYcW8yKwLS5F02
	07BXdJcZz0qmPfkigXM1xD+ZbSYMV/eCP+Gm2D4bSkXUWqaCTYg9iLYrHSB4iss2BLp4
	KPLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=U0YesWCn29JszDYo1alIhjiwZuTbW+pemkdtE3diBAk=;
	b=bUbG9vNOzM6beww8kOTbk5TWOBQcX0LWeUpI8L9FbM6D+zkPcLk3gqOS6jC6vGhiGN
	/3aOvL1y5sZUOeCJqg7YBOWdJtWWUO1NAi0i0PVAPYr+foceApVMXQf/9/Vv40rcxikF
	cXtZSxF0DaiKr+knwFdCgl+QDP1H59KP4xaLIoRiYaZyVdT6ZOYU9uLKrRtxCiuQ5B/H
	gvVth9stVxF6yD4zuwIrkP0pbntV5wmWBrCVD9utX+sClD/9DBo3V5/lb1JETqo0LNPn
	2urmmxi1M7sZgzIIOLUiyzBDaBIQlbaHl/v3GNuJcPKuPDBfVNNMmj94PGhHv4nfi5iP
	dEAQ==
X-Gm-Message-State: APjAAAUBrPTsh5XxRzp0T6vKPWYBlgBrRJJhjuGh5LW8MUj6WdZQ2loi
	RjD6IB4PEaS8U+oNEkZI7LRFyqSvO+PrsIixLAlk6YzS
X-Google-Smtp-Source: APXvYqyKqxo/17gRFxwJhGzPcR8FzysxLFjh6WE2RT5qYQ9Y4rCo/2flC90vFUly2AmRvS4fWnFOD61toTF4V6zYGs0=
X-Received: by 2002:ab0:3b8:: with SMTP id 53mr162006uau.118.1555075582678;
	Fri, 12 Apr 2019 06:26:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:7025:0:0:0:0:0 with HTTP; Fri, 12 Apr 2019 06:26:22
	-0700 (PDT)
In-Reply-To: <CADB9fJG4mMPLbS8_dqF=AzZ4Ww8R7U8WYi5xG2=g5smA5USE7A@mail.gmail.com>
References: <CADB9fJEbDEKKdu7CUoWC4AxC_=hk0vMFPajh0PWijUHy5WW1BA@mail.gmail.com>
	<CADB9fJG4mMPLbS8_dqF=AzZ4Ww8R7U8WYi5xG2=g5smA5USE7A@mail.gmail.com>
From: Eric Grunt <gruntblue@gmail.com>
Date: Fri, 12 Apr 2019 20:26:22 +0700
Message-ID: <CADB9fJGT4HNYO1vWsSoC5-fypvy4PDDsHeq1HEvv9CTBi1i+AA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Dependencies on other file system types for custom file system type
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
X-List-Received-Date: Fri, 12 Apr 2019 13:26:24 -0000
Content-Type: text/plain; charset="UTF-8"

better formatted class file:

inherit image_types

IMAGE_TYPEDEP_squashfs-xz-ubi = "squashfs-xz"

do_image_squashfs-xz-ubi[depends] += "mtd-utils-native:do_populate_sysroot"
do_image_squashfs-xz-ubi[depends] += "squashfs-tools-native:do_populate_sysroot"

IMAGE_CMD_squashfs-xz-ubi () {
	squashfsubi_mkfs "${MKUBIFS_ARGS}" "${UBINIZE_ARGS}"
}

squashfsubi_mkfs() {
 local mkubifs_args="$1"
 local ubinize_args="$2"
 CFG_NAME=ubinize-${IMAGE_NAME}-squashfs-xz-ubi.cfg

 # Added prompt error message for ubi and ubifs image creation.
 if [ -z "$mkubifs_args"] || [ -z "$ubinize_args" ]; then
   bbfatal "MKUBIFS_ARGS and UBINIZE_ARGS have to be set,\
   see http://www.linux-mtd.infradead.org/faq/ubifs.html for details"
 fi

 echo \[ubifs\] > ${CFG_NAME}
 echo mode=ubi >> ${CFG_NAME}
 echo \
 image=${IMGDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.squashfs-xz \
 >> ${CFG_NAME}

 echo vol_id=0 >> ${CFG_NAME}
 echo vol_type=dynamic >> ${CFG_NAME}
 echo vol_name=${UBI_VOLNAME} >> ${CFG_NAME}
 echo vol_flags=autoresize >> ${CFG_NAME}
 # normally we shouldn't need to create the squashfs image ourselves,
 # because we have a dependency declared (IMAGE_TYPEDEP)
 # But, if this file is modified, the dependency is _not_ rebuild,
 # so we have to do this ourselves.
 if [ ! -e ${IMGDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.squashfs-xz ]
 then
  bbwarn \
  "${IMGDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.squashfs-xz does
not exist. Creating."
  ${IMAGE_CMD_squashfs-xz}
 fi
 ubinize -o ${IMGDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.squashfs-xz-ubi \
 ${ubinize_args} ${CFG_NAME}

 # Cleanup cfg file
 mv ${CFG_NAME} ${IMGDEPLOYDIR}/
 }

