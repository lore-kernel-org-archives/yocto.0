Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2279.1588087765141864984
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Apr 2020 08:29:25 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=sGz4ZohW;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05B3DE01AA1; Tue, 28 Apr 2020 08:29:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.173 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EB75E01A9F
	for <yocto@yoctoproject.org>; Tue, 28 Apr 2020 08:29:24 -0700 (PDT)
Received: by mail-pf1-f173.google.com with SMTP id w65so10810144pfc.12
        for <yocto@yoctoproject.org>; Tue, 28 Apr 2020 08:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:from:subject:autocrypt:cc:message-id:date:user-agent
         :mime-version:content-language;
        bh=yEPQpFSjJQcvyMoyBT0zSlyHnhSRiHUZ6F1hwwAu5jI=;
        b=sGz4ZohWuCiHYMsltGx70StZ2uukkKOUpZftzHTi9Td6T6szYII+FWazy92OiVDsPk
         Jk3SoLT9nammC2o2EGDvv01724D/VsTDK//LY9sbAMzU0VJKNKXZsJL4c6kOXGZzZGQZ
         6jzPVriBymFkUOJJxmyfoH7nhl3PcE8FhIvn5cZg8W9ly522p2509bBwW69rDSfMHK/c
         FrAu87xhQrwDItPWWFgtE4t7aHPjwrUTwOkxhj0AozZY7YzCjnHWx4hR6AMFdHkEEbWM
         3Tw3bnMXZlu5E/ylOTmgmwKWl+eEWfSGUT/wzGFiaMldMKCY7AWIqci0EyUA8I0zM9rN
         82GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:autocrypt:cc:message-id:date
         :user-agent:mime-version:content-language;
        bh=yEPQpFSjJQcvyMoyBT0zSlyHnhSRiHUZ6F1hwwAu5jI=;
        b=QUtXy/woV89jYxmVD48hvqZGP8h000EKeSFYqVUjcp1fliZCt18qMW4uEYhQ4GyLrY
         tNy0NBhRooFxCovH5N17xRzyExI/zQgJ8fwUGXdTvy9t0HoCyXJe5kUjmR9HIWCbI7f5
         emP4iMi2xDMN6PYhGDXP44MTlSUBj7eIo5S+znA0u2w3Bt2k+3rv8DatclxtEwiC+/bM
         +TBGG4ks85DLl6pYHXFIwci+e7gWBxvFR7LJOKctd39jFdTid///cgLnhhi6eLOW22u9
         lLh3XOzCsvtNV5M+VHcMZkyCSb3FeaNMjeTaBxalqAa1GCb+GcFV1VBdIg3xu9NxAIpv
         zMxA==
X-Gm-Message-State: AGi0PuYvBBDktqPuxKTi0q+PH2H7wR/jjDGnU3Zj9p63V9iNOAHKqzok
	AV7x9piFeysmpKGjP18XYlU=
X-Google-Smtp-Source: APiQypKc4PccTE84TeDd1A/eRf5CI5+I3yYep4oENN4r0CntAZLLfqIhHbDGz510by6RazZuFJIrZQ==
X-Received: by 2002:aa7:9d84:: with SMTP id f4mr25894964pfq.290.1588087763543;
        Tue, 28 Apr 2020 08:29:23 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:3c5d:7c09:562a:defe? ([2601:202:4180:a5c0:3c5d:7c09:562a:defe])
        by smtp.gmail.com with ESMTPSA id q7sm5752469pgs.13.2020.04.28.08.29.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 08:29:23 -0700 (PDT)
To: bitbake-devel@openembedded.org,
 Patches and discussions about the oe-core layer
 <openembedded-core@lists.openembedded.org>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: "akuster" <akuster808@gmail.com>
Subject: Next Zeus Dot release in May
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Cc: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <229c121e-c2ef-005d-a382-cc7430d72e66@gmail.com>
Date: Tue, 28 Apr 2020 08:29:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------CF432796923F31CF27498284"
Content-Language: en-US

--------------CF432796923F31CF27498284
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Our next bot release is coming up so this is a call for patches. Please
have them on the list by this Friday.


Planned upcoming dot releases:

  * YP 3.0.3 build date 2020/5/4
  * YP 3.0.3 release date 2020/5/15


--------------CF432796923F31CF27498284
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p class=3D"MsoNormal"><span
        style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">Ou=
r
        next bot release is coming up so this is a call for patches.
        Please have them on the list by this Friday.</span></p>
    <p class=3D"MsoNormal"><span
        style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black"><b=
r>
      </span></p>
    <p class=3D"MsoNormal"><span
        style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">Pl=
anned
        upcoming dot releases:</span></p>
    <ul style=3D"margin-top:0in" type=3D"disc">
      <li class=3D"MsoNormal" style=3D"color:black;mso-list:l5 level1
        lfo10;vertical-align:baseline"><span
          style=3D"font-family:&quot;Arial&quot;,sans-serif">YP 3.0.3
          build date 2020/5/4</span></li>
      <li class=3D"MsoNormal" style=3D"color:black;mso-list:l5 level1
        lfo10;vertical-align:baseline"><span
          style=3D"font-family:&quot;Arial&quot;,sans-serif">YP 3.0.3
          release date 2020/5/15</span></li>
    </ul>
  </body>
</html>

--------------CF432796923F31CF27498284--
