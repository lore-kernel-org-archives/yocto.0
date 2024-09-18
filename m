Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBBFCDD547
	for <webhook@archiver.kernel.org>; Wed, 18 Sep 2024 15:53:48 +0000 (UTC)
Subject: Re: sstate fetch errors from network sstate cache server
To: yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Paddington, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 18 Sep 2024 08:53:41 -0700
References: <ceab1bdec1d803b6d6bd8e65d3111ff9f9aaa5a4.camel@linuxfoundation.org>
In-Reply-To: <ceab1bdec1d803b6d6bd8e65d3111ff9f9aaa5a4.camel@linuxfoundation.org>
Message-ID: <25714.1726674821078242477@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4riUiaFDjHMgKYKACcRW"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Sep 2024 15:53:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63862

--4riUiaFDjHMgKYKACcRW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you both for your advice,

I've applied the patch and anecdotally the error rate has dropped but not c=
ompletely stopped.

Having browsed through the detailed logs some more I've found a name resolu=
tion failure as part of the wget call so our internal DNS is suspect number=
 one now.
(Kicking myself that I didn't find this earlier but was losing the recipe s=
pecific logs due to how our build pipeline was clearing the docker images s=
o I missed the specific error, I also wasn't capturing DNS traffic with my =
tcpdump).

I'll come back if I still see the problems once our DNS is more stable.

Otherwise thank you for your help.

Best Regards,
Phil

--4riUiaFDjHMgKYKACcRW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thank you both for your advice,</div>
<div>&nbsp;</div>
<div>I've applied the patch and anecdotally the error rate has dropped but =
not completely stopped.</div>
<div>&nbsp;</div>
<div>Having browsed through the detailed logs some more I've found a name r=
esolution failure as part of the wget call so our internal DNS is suspect n=
umber one now.</div>
<div>(Kicking myself that I didn't find this earlier but was losing the rec=
ipe specific logs due to how our build pipeline was clearing the docker ima=
ges so I missed the specific error, I also wasn't capturing DNS traffic wit=
h my tcpdump).</div>
<div>&nbsp;</div>
<div>I'll come back if I still see the problems once our DNS is more stable=
.</div>
<div>&nbsp;</div>
<div>Otherwise thank you for your help.</div>
<div>&nbsp;</div>
<div>Best Regards,</div>
<div>Phil</div>
<div>&nbsp;</div>

--4riUiaFDjHMgKYKACcRW--

