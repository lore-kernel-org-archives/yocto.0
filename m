Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web12.15797.1584110655160259710
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Mar 2020 07:44:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iJo00nr0;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id h8so5096801pgs.9
        for <yocto@lists.yoctoproject.org>; Fri, 13 Mar 2020 07:44:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=7SVcZe27EnKinxg/mMcaX1jVTeo/IOFRwy+K+GTAOUs=;
        b=iJo00nr0F/MeI4/OHriszOb6CGVF2Xd2kVwFBovSPaH4G2gtGE2AjTJwaMZu2zmkFj
         3qhtzlh5Xi3gKBTDZE761BeyV+KLInnVDg2h6FsHPp4UrAn/iqFwVacAHd0P4ssIGhMT
         Y54bN2q9k7yZ8/W7Y6L6C+ToIT2p8tBsUcC0tZUWkbscGjsg96/+0VwQnKqZk8fIpUf8
         cleWO7aJs6Wt4A2V4iCD/fO2aTCOO0WSWUfC6XhIpGAbF+Et2Ut1ooohE2I3F3NJ3zbY
         +qWpzq3KU5KYGB42Y5+5SdlyxDERO9sCoflV60QEJYbbX+cPK6USpNkcUNq8cWbnIEuU
         DPmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7SVcZe27EnKinxg/mMcaX1jVTeo/IOFRwy+K+GTAOUs=;
        b=Ge6fFEnHBZJX/mVyNZKK0REcNHaP3PQceZx07AxRx/SnJZtwfPdRRny+qofJoPQYX1
         P0cK9wlU2qfxTk4xu0MD2Q2K2b3pfJBhSdgnHXM6MhQO/PhR4uB//eg+4pJ3xl3mWBP2
         gFSyWwOJT+9Xffg3sikUPi4CAGyNzJcWLPfVwgMu8FrR3lWoh7HgpXrvrRfU6ldrKZ76
         EpTaZncHJpUHIDWLGikHn1YNKjxatEA5VLwlyHU+yfXubiF5LwUBLSCe4ccl1bDNKSf+
         NyetgTGqjssthPE9o4m1BQ5NZ6T3o8CwYB394uQPgCBGDIqQh47LmU+LuAjEz6Lhbszl
         ak0g==
X-Gm-Message-State: ANhLgQ2SMMrBsnr7Er7g3wTBfIImc8kJVIv3a0wXC5de+xMJPAcEt0SC
	huG7tSc3CWElbXozTN/j7m0bkGk13A4=
X-Google-Smtp-Source: ADFU+vuNFnqSOPV0oa5er4fbeQW1hsZKsb7UXXLc0R7PdJN83WTYjyj86C5u4cTNtqjOMiOY8iUgIw==
X-Received: by 2002:a63:ec4d:: with SMTP id r13mr13629270pgj.232.1584110654102;
        Fri, 13 Mar 2020 07:44:14 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0:d558:25ee:538d:b97a? ([2601:646:9200:4e0:d558:25ee:538d:b97a])
        by smtp.gmail.com with ESMTPSA id f69sm6066685pfa.124.2020.03.13.07.44.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 07:44:13 -0700 (PDT)
Subject: Re: [yocto] Webcam Streaming
To: yocto@lists.yoctoproject.org
References: <CAE2XSwwoG75USM=vtCPp5WRbo9dyfLZAxVHrvThdFvFWorYnrA@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Message-ID: <d1ad2ffa-ba3f-536e-fe44-56358f70acc7@gmail.com>
Date: Fri, 13 Mar 2020 07:44:12 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAE2XSwwoG75USM=vtCPp5WRbo9dyfLZAxVHrvThdFvFWorYnrA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 3/12/20 5:42 PM, Andrés Jiménez wrote:
> Hello,
> 
> I need to create an image that allows me to stream from a webcam 
> connected to a raspberry3b to an external device (like a computer) via 
> Wi-Fi, I can connect the computer and the raspberry via wifi but the 
> directories added to the image for streaming and controlling the webcam 
> were unsuccessful, I have tried with gstream. Is there any recipe for 
> this case? Also I am using the pocky warrior version

maybe try vlc

> Thanks
> 
> 
> 
