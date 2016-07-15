Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB502E00A7F; Fri, 15 Jul 2016 08:48:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D1C5E00A11
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 08:47:58 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id ez1so2891770pab.3
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 08:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=2apEiWA8UtgE5+KiEeC4aeYlwywJpB0OYDwrqKOluK4=;
	b=xf6sme2wQclhXgkr3g7Ub+3bR81zOa2qFsf4N1mBf1hyuLdELHdHid1qUBMTVEFpjx
	aL26omCvSviq854dof/tFVTQ3t4ohAi+D9xkWE41YLZk2TlDMdok3xh9QDL0Z3UJE1VX
	uPNBLDNn9UJGspJV652CXIHFo5jACHbEkPJvDjizJCbmDcH2tG5T86rDrEm8dsInnt6M
	Zus8DnosJGZUkzgJF65kiK9H0XYK/F9zBLfPzx6s/y85suTgde+pvppNTeOogd4e55R/
	nmOAVUxjRAwffUcWqU2uStn62sYWLmPkyw7xH0D2VHN8YxK3SrogbQp0ZXapf6MVlsMY
	7wiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=2apEiWA8UtgE5+KiEeC4aeYlwywJpB0OYDwrqKOluK4=;
	b=CepL1mWQoXUTnpiVO4sduFTUDrUPR+VhJgxW3jqeH8JpuhFvhtZwv32tHqx9pmfGp4
	MfYDQhYxKNYGmqaaG7FXE7IYzSPWsRNz3efLsj6SWXpcjRx51hOn436kEUTucKg1hl8E
	4jm9TBGp04e+Ybs8NYsI9bch7GfuGF+ijfeSEN5ch18mBkZgH3Lb9gi1XUjWO4Igpje9
	53EA7vClH5Qal4J67s5kfSA6elPAZ1H5A7TGTtFl45MzrlV1H8o5EJFxZnDTXhHo8LAo
	+CUMWckGns8XKz8CQGz9pL3CMdssOYLL7cg9mL/t8gByZN5ARvZ7IrP274SQK4YU8kDs
	OV4A==
X-Gm-Message-State: ALyK8tL2PnCzVll+XdI01hNvTsisDN7raHIoswgnQmNi99WG0noflURRKlMYWhipfnlHrA==
X-Received: by 10.66.170.44 with SMTP id aj12mr33047320pac.131.1468597678471; 
	Fri, 15 Jul 2016 08:47:58 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:194d:2232:d2ef:3b9c?
	([2601:202:4001:9ea0:194d:2232:d2ef:3b9c])
	by smtp.googlemail.com with ESMTPSA id
	lf11sm5644055pab.17.2016.07.15.08.47.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 15 Jul 2016 08:47:57 -0700 (PDT)
To: Saul Wold <sgw@linux.intel.com>, Yocto Discussion <yocto@yoctoproject.org>,
	OpenEmbedded List <openembedded-core@lists.openembedded.org>
References: <1468596746.6912.772.camel@linux.intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <578905AB.4090701@gmail.com>
Date: Fri, 15 Jul 2016 08:47:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <1468596746.6912.772.camel@linux.intel.com>
Subject: Re: Yocto Project Status WW29
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
X-List-Received-Date: Fri, 15 Jul 2016 15:48:00 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit



On 07/15/2016 08:32 AM, Saul Wold wrote:
> 
> Current Dev Position: YP 2.2 M2
> Next Deadline: YP 2.2 M2 cut off would
> be: 7/18/16 (This coming Monday - 5:00pm GMT)
> 
> SWAT team rotation: Paul -> Ross
> https://wiki.yoctoproject.org/wiki/Yoct
> o_Build_Failure_Swat_Team
> 
> Key Status/Updates:
>  * Richard has been out this week, so the report will be thin.
>  * Performance regressions were narrowed down to the GCC6 Update, movingto GTK3 and the Python3 port. Investigation into how to mitigate thisis ongoing.
>  * We’re considering removing uclibc and GCC 5.4 (preferring musl and GCC6) from OE Core 2.2, so if this would impact you please speak up.
>  * 2.1.1 Completed QA, but there was a High found to do with supportingFedora 24, which released very soon after 2.1 initially released andshould be a supported build host. This will delay 2.1.1 until after M2QA is completed.

Any idea on an ETA on M2QA will start. Since 2.1.1 is being delayed,
does that open the door for more back ports not related to the F24 fixes ?

- armin

>  * Reminder that the M2 cut off is this coming Monday!
> 
> Key YP 2.2 Dates:
>  * YP 2.2 M1 release would be: 6/24/16
>  * YP 2.2 M2 cut off would be: 7/18/16
>  * YP 2.2 M2 release would be: 7/29/16
>  * YP 2.2 M3 cut off would be: 8/29/16
>  * YP 2.2 M3 release would be: 9/9/16
>  * YP 2.2 M4 cut off would be: 10/3/16
>  * YP 2.2 M4 release would be: 10/28/16
> 
> Tracking Metrics:
> 	WDD 2698 (last week 2747)
> (https://wiki.yoctoproject.org/charts/combo.html)
> 
> Key Status Links for YP:
> https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.2_Status
> https://wiki.yoctoproject.org/wiki/Yocto_2.2_Schedule
> https://wiki.yoctoproject.org/wiki/Yocto_2.2_Features
> 
> [If anyone has suggestions for other information you’d like to see on this weekly status update, let us know!]
> 
> 
> 
> 

