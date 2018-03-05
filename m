Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F05EBE0107B; Mon,  5 Mar 2018 08:34:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 615AAE00E36
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 08:34:34 -0800 (PST)
Received: by mail-it0-f44.google.com with SMTP id e64so10825970ita.5
	for <yocto@yoctoproject.org>; Mon, 05 Mar 2018 08:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5FIWtWpbd2DCQj6oHruneKuj+ywusQC7UUdjeFBBFmA=;
	b=KoDE2ZPyW0mw1yLBrHg2K5iQRtu38b+1q7cQF8BD+9QBD9nGn2WS7cACG/pZNQZJQK
	LP5devhcYEgA7GEJr3lCch417bGytJACJrzWk5+hbf+gUIWoiQ0UKIoNhgVvsA5GtyF9
	B9kvYxzMv2o8xBxw8KqpwtVE+uhIEcGbrz3WD6i5YkOG/EKqub/0Uq6qaQa/eUKV9T5L
	MNvO1lzZibgZ9UUAz911kj9l8YYKUCHdLBZFntKQEV/ChBoXHeNetI9bvxq42HlZmFMp
	sPi6aZTbgdYaOpfnBpehVD1BL2BeZJ2RcjTfQ8FS542W1eBZGR5U0HuPT3uvIT1ox8mh
	juzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5FIWtWpbd2DCQj6oHruneKuj+ywusQC7UUdjeFBBFmA=;
	b=MI+esVb42z3CCIQjJpfYSnaJ/iZZf48V9KFg0VTvvTwZ6AnbU1jHdb7bRWxOi1eSAz
	m4xaDCsY/ZayfYYzLWfCrpoeNYk/+1F79oYH3PCfUKCE5PUU8makqVb4e59IwNgfBj39
	cK0LAV6KmaPJqBsNxWvqQCWVp4SuHl7dsb9hf8iIxeRfE6yi1snFlnC2axiSNfx9i/gz
	GCY5Dv9zd6hlgl+TlzQt9VzMb4xgKy95iJQcZmBRfxkfIpRLEVy2Tx1+y0GPU4cQhR2d
	xHmK9IWrHx9giWb4kRrixcfeXsli366UzXcusxqGWCKnhyjwyqYxkfg5Wn2v0PeBhf7P
	n3eg==
X-Gm-Message-State: AElRT7HJic+ASxxij13M8HN/2ORvwN/i/SYSkQFwTX5XwKmnBGc1tmhE
	TVjksJxgtlWGRoie94zO28lyy9xEUkIhiZTALLESgw==
X-Google-Smtp-Source: AG47ELu2Gfsqw+RvSZLoD8W2gxqQq5lZ6D88Pk9DJyW9J8AYGI18jjT8txGsfPB1wmFni5RNtbxBl2RLunlcfmT66Oo=
X-Received: by 10.36.66.195 with SMTP id i186mr15223745itb.45.1520267674477;
	Mon, 05 Mar 2018 08:34:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Mon, 5 Mar 2018 08:34:13 -0800 (PST)
In-Reply-To: <8dcbb503-f0d0-c616-e794-80742dccd78a@gmail.com>
References: <CY4PR11MB1766A9FB3A584F0EE50568F3C7DA0@CY4PR11MB1766.namprd11.prod.outlook.com>
	<8dcbb503-f0d0-c616-e794-80742dccd78a@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 5 Mar 2018 16:34:13 +0000
Message-ID: <CAJTo0LYA6HPE4TUEXCWCFwbbM-dUXiYjkwQ22fkvnWvuPkyqCg@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: =?UTF-8?B?UmU6IFtPRS1jb3JlXSBTdWJqZWN0OiBZb2N0byBQcm9qZWN0IFN0YXR1cyBXVzEw4oCZMTg=?=
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
X-List-Received-Date: Mon, 05 Mar 2018 16:34:47 -0000
Content-Type: multipart/alternative; boundary="001a113b8804b393110566ace64d"

--001a113b8804b393110566ace64d
Content-Type: text/plain; charset="UTF-8"

On 5 March 2018 at 16:30, akuster808 <akuster808@gmail.com> wrote:

>
>    - Performance metrics indicate that a recent merge has caused a
>    slowdown in build times.
>
> Is this data publicly available?
>

https://lists.yoctoproject.org/pipermail/yocto-perf/2018-March/thread.html

The HTML mails are much more readable...

The raw data is in the wiki somewhere but I can't recall where right now.


>
>    - Flood of last-minute upgrades continuing to be reviewed and merged
>    if low-impact.
>
>
> Is there a cut off on package upgrades?
>

Strictly speaking,  weeks ago.  If an upgrade appears safe it might well
sneak in now.

Ross

--001a113b8804b393110566ace64d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 5 March 2018 at 16:30, akuster808 <span dir=3D"ltr">&lt=
;<a href=3D"mailto:akuster808@gmail.com" target=3D"_blank">akuster808@gmail=
.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmai=
l_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left-width:1px;border-left-style:solid;border-left-color:rgb(204,2=
04,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF"><span class=3D"gmail-">
    <blockquote type=3D"cite"><div class=3D"gmail-m_-1299853748163035768Wor=
dSection1"><ul style=3D"margin-top:0in" type=3D"disc"><li class=3D"MsoNorma=
l" style=3D"color:black;vertical-align:baseline"><span style=3D"font-family=
:Arial,sans-serif">Performance
              metrics indicate that a recent merge has caused a slowdown
              in build times. </span></li>
        </ul>
      </div>
    </blockquote></span>
    Is this data publicly available?</div></blockquote><div><br></div><div>=
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto-perf/2018-March/t=
hread.html">https://lists.yoctoproject.org/pipermail/yocto-perf/2018-March/=
thread.html</a></div><div><br></div><div>The HTML mails are much more reada=
ble...</div><div><br></div><div>The raw data is in the wiki somewhere but I=
 can&#39;t recall where right now.</div><div>=C2=A0<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px=
;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1e=
x"><div bgcolor=3D"#FFFFFF"><span class=3D"gmail-"><blockquote type=3D"cite=
"><div class=3D"gmail-m_-1299853748163035768WordSection1"><ul style=3D"marg=
in-top:0in" type=3D"disc"><li class=3D"MsoNormal" style=3D"color:black;vert=
ical-align:baseline"><span style=3D"font-family:Arial,sans-serif">Flood
              of last-minute upgrades continuing to be reviewed and
              merged if low-impact.</span><br></li>
        </ul>
      </div>
    </blockquote>
    <br></span>
    Is there a cut off on package upgrades?</div></blockquote><div><br></di=
v><div>Strictly speaking, =C2=A0weeks ago.=C2=A0 If an upgrade appears safe=
 it might well sneak in now.</div><div><br></div><div>Ross</div></div></div=
></div>

--001a113b8804b393110566ace64d--
