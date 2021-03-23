Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web08.4435.1616473904792335872
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 21:31:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=feee98AD;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id g15so13157860qkl.4
        for <yocto@lists.yoctoproject.org>; Mon, 22 Mar 2021 21:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=cM2udl+UmBGw3HxcPMIfil3kNCk4/dmQW2OmmYP+bjs=;
        b=feee98ADHUR7uOCQJOeOeTpjfMn3aLyN6buQ576IEQX5dS+3qtuxmhXBZ9+PibhkgL
         si1PY3eGeFaiwtGzzEXcBRYjbgrAOOTtdd7nr3i3942a2Rxwmqjmw7kdV16W4NzdXM9U
         8dXhWSb2Ej+wW+79/Af546BG/q9/TcaQPAEA0/DgRDDkCashyJxGRsuojupmNlkeUcDQ
         YmM54h+pltYMz0WoDf3qQVHL0g6KWLW5AZ7eastV/225/sfWkUUn6XOKqBgxhGPaBFG8
         kSe7muCXAblXjj2AYKRvjjUnoghl1UYL3HYJU6TKjFOS+2CNKayKkOVRlum3LSye2sJP
         nB8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=cM2udl+UmBGw3HxcPMIfil3kNCk4/dmQW2OmmYP+bjs=;
        b=Uk6Sxue68KOkW5tHd3zd0Uf9/Xb2XrdCOWGJhVD1728QAcmdzswuJDA1SxK8PKuRje
         lI/sjpPAu2mQAYC1ohs/z2ZSZuMVuyY3JXAx9NSiocQtWdgHk63MjxabcmVWGVKJPD+o
         nyJNk7f06V6WBEyxq+q9J8Y2zsVZ7Dyb7hoviRGqt7evZ7TBFHJQRdBc+AwUjA9GYwu+
         GLz3cK88OO2hrdodRy/SwwRlX3/U3JFlfuRbuxSImMZRqeS0GLXeUmfwDXtsEMspWCY0
         wrTTuafOIiFyWJHkbK1QVoF/0YqUGzT+iIuJCjawA4Vt5sWcByMVYzVU7oCSBtubXrWj
         Bu/Q==
X-Gm-Message-State: AOAM5324deQ95BWV3fe48KeMmeTSc4sNLvtm1gavQMTFpo8uOHDPoST5
	NR2uIHzCeumibI9LqRbmmeN+T0UYVfo=
X-Google-Smtp-Source: ABdhPJwpTle9Asrrsh80TO+r0zWs20gHCcQDn2rI1pWPO96EQ4vZ6Nb/hwdfCUoDNr0NjhpUSrS3uw==
X-Received: by 2002:a05:620a:126d:: with SMTP id b13mr3803694qkl.122.1616473903537;
        Mon, 22 Mar 2021 21:31:43 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id 75sm12274797qkj.134.2021.03.22.21.31.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Mar 2021 21:31:43 -0700 (PDT)
Date: Tue, 23 Mar 2021 00:31:41 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [meta-rockchip][PATCH v2] Add machine definitions for NanoPi-M4 boards, 2GB and 4GB variants
Message-ID: <20210323043141.GA19209@localhost>
References: <20210322150720.580313-1-yann@blade-group.com>
 <20210323042517.GA18238@localhost>
MIME-Version: 1.0
In-Reply-To: <20210323042517.GA18238@localhost>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Tue 2021-03-23 @ 12:25:17 AM, Trevor Woerner wrote:
> On Mon 2021-03-22 @ 04:07:20 PM, yann.dirson@blade-group.com wrote:
> > +IMAGE_FSTYPES += "wic"
> 
> Please add "wic.bmap" to IMAGE_FSTYPES in addition to "wic". It makes creating
> an µSD card so much faster.

Personally, specifying wic should add wic.bmap implicitly. I can't imagine why
anyone would want to generate a wic without the bmap to go with it. But my
use-case is probably narrow.
