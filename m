Return-Path: <gruntblue@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C539E00AB0; Fri, 12 Apr 2019 06:21:23 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com
	[209.85.217.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B26F7E00A54
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 06:21:20 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id j184so5493817vsd.11
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2019 06:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=F57urpctr8dJR+EM3Km+1nD8t/nBdRoFu8iLwkC30OQ=;
	b=DW4GG+ENpnnBCRrwQyk3ro2D1YsEbGtmC6b+3RClpZlX38e32W58JfvDZTuuH7lXAM
	8QKX661gTqKnoOBXIylY7ovZOzd/VQ/IQnXQfJkjsnpTP9bR7H7V1afTam8bN/APUBqx
	E5injKXcVEZyVXBKutoTed0FdKNfbCGNjtowUpk0YatUkI7PJzNqDLqp3igT5hliAeqJ
	vysIbIoUUybsrFDTqjCuycZ2nyvif3mKhQlEL24hgeCrMhISiVEdADTenvejShIjW9g1
	Kdd8qiN/ty+OewRBb1rMzFVNMNDEHLbcKSsp35WOvcipOXpZ28dt33PUCDM7CiLR27LY
	6faA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=F57urpctr8dJR+EM3Km+1nD8t/nBdRoFu8iLwkC30OQ=;
	b=pfb+I69jRVcuwePqFDfgXfLV6A4KHdXt/u4y5fP2BXPxcWREQMqKXVmFn6quhquvcG
	KS7WMyBcnAviaMnEKWT0e3N2ZQcfqrQOfxrxhrwpX3l01fyK4ynwefnxOTiqL0195Jjo
	xM0bkBi4A2esB/pQys47jXEj4VXa9Qo0cD0n2L9uFoSX876H8tveXGAibQjOrqdZX9Ey
	aoow3vQO6Q/Pg/uWqVsEGjFU1jvUfOq233+uAZZ19+YzJybjzNzhjd6LLWSGKcjiQcmC
	t59aMtzkFhVmIsvp8VfzrSaH1VfQINnN7BQwYKcul+OLoI0iyKwK+XAXxNO2AB+Zphya
	aykg==
X-Gm-Message-State: APjAAAWcPaLA4Lgp3Ak9p5blbPgrf+9OyyU0QLKk2h+5gDxrnKQ2xkjt
	P750z3tZMWzUst2w3Y2OQzersZl/KQID+l5Fi9vY4tIn
X-Google-Smtp-Source: APXvYqxHKe+8lTNOBnRhsqVn8izO2ZMXjIRReKV+vXpZ6y/zsqvQLJGTRtZiiKhSESUbUYSmkao0c4P5ywcUbBNIwik=
X-Received: by 2002:a05:6102:201:: with SMTP id
	z1mr32326218vsp.43.1555075279971; 
	Fri, 12 Apr 2019 06:21:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:7025:0:0:0:0:0 with HTTP; Fri, 12 Apr 2019 06:21:19
	-0700 (PDT)
In-Reply-To: <CADB9fJEbDEKKdu7CUoWC4AxC_=hk0vMFPajh0PWijUHy5WW1BA@mail.gmail.com>
References: <CADB9fJEbDEKKdu7CUoWC4AxC_=hk0vMFPajh0PWijUHy5WW1BA@mail.gmail.com>
From: Eric Grunt <gruntblue@gmail.com>
Date: Fri, 12 Apr 2019 20:21:19 +0700
Message-ID: <CADB9fJG4mMPLbS8_dqF=AzZ4Ww8R7U8WYi5xG2=g5smA5USE7A@mail.gmail.com>
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
X-List-Received-Date: Fri, 12 Apr 2019 13:21:23 -0000
Content-Type: text/plain; charset="UTF-8"

class file:

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
            bbfatal "MKUBIFS_ARGS and UBINIZE_ARGS have to be set, see
http://www.linux-mtd.infradead.org/faq/ubifs.html for details"
        fi

	echo \[ubifs\] > ${CFG_NAME}
	echo mode=ubi >> ${CFG_NAME}
	echo image=${IMGDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.squashfs-xz
>> ${CFG_NAME}
	echo vol_id=0 >> ${CFG_NAME}
	echo vol_type=dynamic >> ${CFG_NAME}
	echo vol_name=${UBI_VOLNAME} >> ${CFG_NAME}
	echo vol_flags=autoresize >> ${CFG_NAME}
	# normally we shouldn't need to create the squashfs image ourselves,
	# because we have a dependency declared (IMAGE_TYPEDEP)
	# But, if this file is modified, the dependency is _not_ rebuild, so
we have to do this ourselves.
	if [ ! -e ${IMGDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.squashfs-xz ]
	then
		bbwarn "${IMGDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.squashfs-xz
does not exist. Creating."
		${IMAGE_CMD_squashfs-xz}
	fi
	ubinize -o ${IMGDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.squashfs-xz-ubi
${ubinize_args} ${CFG_NAME}

	# Cleanup cfg file
	mv ${CFG_NAME} ${IMGDEPLOYDIR}/
}

