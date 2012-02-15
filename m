Return-Path: <wjn740@gmail.com>
Received: from mail-tul01m020-f176.google.com (mail-tul01m020-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B8A0E0044A
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 17:20:03 -0800 (PST)
Received: by obbwd18 with SMTP id wd18so1118022obb.35
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 17:20:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=E6BCubrHGIlxRlgbgpVBjikfcwv0dvrlDP0T8A92bPM=;
	b=G6ckp0+3C7uF11ui0rTw7L3FbxCpxwRtgEDxqhki4uOQTnj6AZ+Pt1BRfgvsaDLvF/
	quXMHG9w8cPOpbdY0CtjAl5VO+mP6FRKR1KQjaXQ4dnlF4uTBVKgxHtMXl6EuUU0qnEI
	nqRT92V+S5eA10daCZsbJv9GZdTp3FeygLD+s=
MIME-Version: 1.0
Received: by 10.182.144.68 with SMTP id sk4mr17282867obb.4.1329268802581; Tue,
	14 Feb 2012 17:20:02 -0800 (PST)
Received: by 10.182.32.198 with HTTP; Tue, 14 Feb 2012 17:20:02 -0800 (PST)
In-Reply-To: <4F3AC2DC.20001@gmail.com>
References: <CA+FcS-zG0sxF34GjLSsp+505ov2cJASjwWrK+5PB6+Yt4JQ0DA@mail.gmail.com>
	<857BE142E5399E46B20FD45B9DB8A7BC0FCE74AA@SHSMSX102.ccr.corp.intel.com>
	<EB4F5542-59F9-419E-87BC-AE9741520771@gmail.com>
	<4F3ABD54.7060507@intel.com> <4F3AC2DC.20001@gmail.com>
Date: Wed, 15 Feb 2012 09:20:02 +0800
Message-ID: <CA+FcS-x4dyUeCzGN693W_XfBtBnVfop78jH_BrQ3g7=ior1+nQ@mail.gmail.com>
From: "James W." <wjn740@gmail.com>
To: jfabernathy <jfabernathy@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to find Log
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 15 Feb 2012 01:20:03 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

thank you for your help .
so ,i think log mechanism is very important for such a large build system.
We may should do better on this point.



On Wed, Feb 15, 2012 at 4:23 AM, jfabernathy <jfabernathy@gmail.com> wrote:
> On 02/14/2012 03:00 PM, Scott Garman wrote:
>>
>> On 02/14/2012 04:47 AM, James Abernathy wrote:
>>>
>>>
>>> On Feb 14, 2012, at 4:04 AM, Lu, Lianhao wrote:
>>>
>>>> James W. wrote on 2012-02-14:
>>>>>
>>>>> How to locate Log file while a error occur.
>>>>
>>>>
>>>> It's under the directory ${WORKDIR}/temp/. Actually when an error
>>>> occurs, you can find the specific log file in the output, something li=
ke.
>>>>
>>>> ERROR: Logfile of failure stored in:
>>>>
>>>> /intel/poky/builds/toolchain/tmp/work-shared/gcc-4.6.2+svnr181430-r22/=
temp/log.do_patch.15156
>>>>
>>>> Best Regards,
>>>> Lianhao
>>>>
>>>>
>>> I have a similar questions. If the error occurs and the console log
>>> information scrolls too far to get back to, how do I find the error log=
 file
>>> then? I know what directory all the logs will be, but is there an easy =
way
>>> to find the one with the error??
>>
>>
>> In Poky master, we now save the output from bitbake in cooker.log files,
>> kept under build/tmp/. This will be a feature of our upcoming 1.2 releas=
e of
>> Yocto.
>>
>> Scott
>>
> Found them! =C2=A0great idea!
>
> Jim A
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

