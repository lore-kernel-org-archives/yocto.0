Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
 by mx.groups.io with SMTP id smtpd.web12.7528.1605973724233097812
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Nov 2020 07:48:44 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: crashcourse.ca, ip: 199.212.143.3, mailfrom: rpjday@crashcourse.ca)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:39772 helo=localhost.localdomain)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1kgV7w-0002aM-Sy; Sat, 21 Nov 2020 10:48:41 -0500
Date: Sat, 21 Nov 2020 10:48:37 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Chuck Wolber <chuckwolber@gmail.com>
cc: rustyhowell@gmail.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] Best convention for FILES variable
In-Reply-To: <CAB=6tBRZoRMzAtHGaT5T+_8QEK9EaeUa-KbckvrYvQQmiJiAgw@mail.gmail.com>
Message-ID: <8251b71-2826-42c7-9d63-b0587f61898@crashcourse.ca>
References: <SGGF.1605926973795518137.Lv2i@lists.yoctoproject.org> <CAB=6tBTXBc+77Eh0hDKGLtWDzU+PwFr1HRAeica-4ckftO33GQ@mail.gmail.com> <CAB=6tBRZoRMzAtHGaT5T+_8QEK9EaeUa-KbckvrYvQQmiJiAgw@mail.gmail.com>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: multipart/mixed; boundary="8323328-991400001-1605973720=:4827"

--8323328-991400001-1605973720=:4827
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sat, 21 Nov 2020, Chuck Wolber wrote:

>
>
> On Sat, Nov 21, 2020 at 12:21 AM Chuck Wolber <chuckwolber@gmail.com> wrote:
>
> %< SNIP %<
>  
>       And finally, I have adjusted to using the following pattern, and found that it
>       has improved maintainability a great deal. It applies to DEPENDS and RDEPENDS
>       as well. Yes, it is a bit tedious, but the benefits far outweigh the cost
>       (IMHO).
>
> FILES_fooz += " lib/foozlib.so"
> FILES_fooz += " /usr/lib/foozlib-2.so"
> FILES_fooz += " /usr/bin/fooz"
> FILES_fooz += " /bin/fooz"
> FILES_fooz += " /usr/share/fooz"

  pedantically speaking, since you're using "+=", you don't need those
leading spaces.

rday

--8323328-991400001-1605973720=:4827--
