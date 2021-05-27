Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.90.20])
 by mx.groups.io with SMTP id smtpd.web10.454.1622138616357589247
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 May 2021 11:03:37 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=SN2HvJ0G;
 spf=none, err=permanent DNS error (domain: optimcloud.com, ip: 46.23.90.20, mailfrom: yocto@optimcloud.com)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id af6dd0fd
	for <yocto@lists.yoctoproject.org>;
	Thu, 27 May 2021 20:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=
	subject:to:references:from:message-id:date:mime-version
	:in-reply-to:content-type; s=obsd; bh=ZH35BOYd2YGWXK7fqqbpnKQvRh
	YpoIND7qvVctjymTg=; b=SN2HvJ0GDFyKboePHxiufltnIhdKuVYo8FIspcK9kf
	iEL/U8t+zVD5RpCc2eKnmw4ZGgdN95Wna1+0JWUeFrfFriOeh2UhClLDdizrtl2N
	f0PMyKXAL3lJxUpR/PNE5mMG2t/AXtb4cwNFYH95Ety8mmb1XipvwxTTgqThzPCz
	ocw9UbnDlIyEP/8agI1ZtEbBOwwS8Y6GhKH5rYn+xthfQ9vCJIJk2DLljsaLP9z1
	LYHMvhzdnFQQv/rji6ch997gs450LZG2DlDrygdhoWoIB+Ta362iZMelIzOnhWv2
	XkvZ6Z96R+gaIWXn3vPxNAMkdEHTFc77nwCWaJZyxR5Q==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=subject:to
	:references:from:message-id:date:mime-version:in-reply-to
	:content-type; q=dns; s=obsd; b=To425/spY0YydgNMLzIzn3q6RM75hLJl
	HoYJ19wT/qERTNIdrRFLSCmrKjSzz24+DjEKgwiohhp2igMc8JbeV9uCcMEfwcxi
	3gueg9oC5n7rUXrsYWYPSAGOadyoAiSj/okCqjmm8ChlnZsMCSN2xUR25MMTPg+N
	3yuTMeDt5T1/n+AdouWMMmCC4hKZaAbfDS3mbXFzxO/+frm/8xHWo3nTfJYkHJih
	7goUtEzGAelAvhN4qLdon4TxYqeIDNj2nQALVeVeJRbEs3MeN7l610ZJacDv+cat
	40D3bULL/HfY547r5MTiwbYC7uPIG1YHzzn/ZqzShqNp6JnOHPgxjg==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id 75d3a9ce (TLSv1.3:AEAD-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com
	for <yocto@lists.yoctoproject.org>;
	Thu, 27 May 2021 20:03:33 +0200 (CEST)
Subject: Re: [yocto] a recipe that launches a docker container to build a custom library...
To: yocto@lists.yoctoproject.org
References: <9csA.1622134780515315437.Ybrg@lists.yoctoproject.org>
From: "Yocto" <yocto@optimcloud.com>
Message-ID: <b0b91511-2b09-b532-da79-fb19dd88a636@optimcloud.com>
Date: Fri, 28 May 2021 01:03:29 +0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <9csA.1622134780515315437.Ybrg@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------B551FC85033886DD92273D0D"
Content-Language: en-US

--------------B551FC85033886DD92273D0D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

maybe take a look at some of the work toradex has done,

maybe in their torizon tree you can find some creative ways

https://developer.toradex.com/knowledge-base/how-to-autorun-application-at-the-start-up-in-linux

https://developer.toradex.com/knowledge-base/run-manage-docker-container-torizon

On 5/27/21 11:59 PM, flobro30101@gmail.com wrote:
> Has anyone seen suck an animal before, and if not, how hard would it 
> be to launch a container, then get the output to install like a normal 
> recipe does?
>
> 
>

--------------B551FC85033886DD92273D0D
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>maybe take a look at some of the work toradex has done, <br>
    </p>
    <p>maybe in their torizon tree you can find some creative ways</p>
    <p><a class="moz-txt-link-freetext" href="https://developer.toradex.com/knowledge-base/how-to-autorun-application-at-the-start-up-in-linux">https://developer.toradex.com/knowledge-base/how-to-autorun-application-at-the-start-up-in-linux</a></p>
    <p><a class="moz-txt-link-freetext" href="https://developer.toradex.com/knowledge-base/run-manage-docker-container-torizon">https://developer.toradex.com/knowledge-base/run-manage-docker-container-torizon</a><br>
    </p>
    <div class="moz-cite-prefix">On 5/27/21 11:59 PM,
      <a class="moz-txt-link-abbreviated" href="mailto:flobro30101@gmail.com">flobro30101@gmail.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:9csA.1622134780515315437.Ybrg@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      Has anyone seen suck an animal before, and if not, how hard would
      it be to launch a container, then get the output to install like a
      normal recipe does?<br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------B551FC85033886DD92273D0D--
