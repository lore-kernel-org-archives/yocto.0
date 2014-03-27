Return-Path: <trevor.woerner@linaro.org>
Received: from mail-oa0-f46.google.com (mail-oa0-f46.google.com
	[209.85.219.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58439E00A71
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 09:33:40 -0700 (PDT)
Received: by mail-oa0-f46.google.com with SMTP id i7so4633799oag.33
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 09:33:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=Ul6EuwyDnfEyJanCvqB+R2uESY1KUhcW8C0so7TvTA8=;
	b=D3HbnQEVuhLV/uRe1JCJvcPGqMV70rU07xPuoa3j2wAAlG8NPKRkXmHumdrwuy8vo5
	EBayaJ6y7mcxlgRRnpU5/mAhCsFpGMz0/DgxVwnqU9DvX6rMj26zcIErMZe1QU58RHPS
	NpwVOddlBsdpXhV1vC4ZDCAfHRdFtff24oaZiipgHhL2jeq1BKxScVXI6iMkl7dFgBGb
	PT28Coh4rYyjN7fary3mZCuveec/55VRkuXi6kquF3Ois1NsBcnrnkX93jr3QS/wxHFq
	2oeqqx31/C8D1AEpwVykLMlrAEqmEItiGU1+HZKxyR3oRvx8latNteyv+UW9v1d0kxH0
	qiPw==
X-Gm-Message-State: ALoCoQlJysF5dL0tUHPVgbWZ4L93jxXQN9CfXKUkkeL5IiZu6tNSR2DegzFkLM+5d3lvzV7HVypv
X-Received: by 10.182.118.169 with SMTP id kn9mr1055027obb.46.1395938019957;
	Thu, 27 Mar 2014 09:33:39 -0700 (PDT)
Received: from [192.168.141.83] (69-165-220-158.dsl.teksavvy.com.
	[69.165.220.158]) by mx.google.com with ESMTPSA id
	kn10sm10208269oeb.0.2014.03.27.09.33.38 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 27 Mar 2014 09:33:39 -0700 (PDT)
Message-ID: <533452E2.9030407@linaro.org>
Date: Thu, 27 Mar 2014 12:33:38 -0400
From: Trevor Woerner <trevor.woerner@linaro.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>, 
	Otavio Salvador <otavio@ossystems.com.br>
References: <1395676843.24890.7.camel@ted> <5330C9A8.904@linaro.org>
	<20140325055028.GA3710@jama> <5332E520.5050005@linaro.org>
	<CAP9ODKoSO6ewoim_4c6N15C5-uQz0XQ3kPam421mYRPhRcWoNg@mail.gmail.com>
	<CAP71Wjz2MD52m_ij09nCRZoDh6iJfojae7sJYK4ZwSqZ_qGVZQ@mail.gmail.com>
In-Reply-To: <CAP71Wjz2MD52m_ij09nCRZoDh6iJfojae7sJYK4ZwSqZ_qGVZQ@mail.gmail.com>
Cc: yocto <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] --conf Was: Features in Yocto Project 1.7
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
X-List-Received-Date: Thu, 27 Mar 2014 16:33:43 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Excellent information! Thanks for all the workflow examples, this is great.

