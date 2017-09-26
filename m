Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28958E00D16; Mon, 25 Sep 2017 18:23:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4DA8E00C8F
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 18:23:19 -0700 (PDT)
Received: by mail-pf0-f181.google.com with SMTP id m63so4738670pfk.7
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 18:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=XYJ6FU9CQ7JBvXHLS6rPiRyZrBLKEw8gyX1fLosSppo=;
	b=lH5m40rBM6ursB4hsNoYF7raoomyKyF37x2zMEoLUQ8SqDnzqm8Q6TmZKCF8f3X8fo
	IbhyrwYnw9Z1lysoC/up1Q4mtwFKn5uBm6C+dwThM2iKC3ICzm8etnsX9Nz7jPSLV9Tq
	ktGAEVXc3IDwqtCDrb3rWmW25C3NKtA3UEzJU1goMnYClbHWLGHOmxFpJerKnGcZnfUd
	dlkizVb1y7EW9HfouedJpzvbaN/G9/M61FXHKMlP5GcLDWJXZLVJFin19FoocXSUAkBY
	dvC+9S3aGQKSmtEOqCeAqZrlpr4wHTiLY312DGGNMSvdgPPm+RE3mVLXEWGtRL0Fa6Mi
	TCxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=XYJ6FU9CQ7JBvXHLS6rPiRyZrBLKEw8gyX1fLosSppo=;
	b=QV8/YatexXbsRETYc7a1jCP6DlVebiHGE5d7STbxwaR1z4g72OZxwjCxTWnohvOtfA
	xEdzJYiaq5zv88jY+V+uU4CtznPOiBuQQANYtYlaluTcP+loA2v7dWVPjmYkAhkioe2J
	/qgXwmEAYymYbjBctkosomD//U+dQgZs6rgO/6n/s4GP5dJsa8SOc0i6dhgrN34bs/0m
	bxfW2PCVML2KNYeYZvfkgd0nqRex1MzZqWXJ+6x44Be6tBmPZO0kvibMEkNiFom1kMpK
	NrCrZAAvt9SpwTO4LkNHWXUcruoEHvaioK5WUBJuhvCDMP9z0Nb1TgF6p9B5rhEgrRMA
	syFw==
X-Gm-Message-State: AHPjjUh7A0VKhj+kx4huVuPDrxN9gCtXggf7NnHRqMMOSWiaXh/rMO//
	wvdf2GV40w8ZQZzE0c033IAjw8XG9wU=
X-Google-Smtp-Source: AOwi7QC395a8QNdi3MhsbH2nEn/tQsKxxwzemDqHDsn/ZmcwZ2KsQmwqf+6NX8hBBlBOnvdfa75VdA==
X-Received: by 10.159.216.143 with SMTP id s15mr9278553plp.201.1506388998834; 
	Mon, 25 Sep 2017 18:23:18 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:41ca:f424:3692:4c93?
	([2601:202:4001:9ea0:41ca:f424:3692:4c93])
	by smtp.gmail.com with ESMTPSA id
	q23sm13368808pfk.182.2017.09.25.18.23.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Sep 2017 18:23:17 -0700 (PDT)
To: Amanda Brindle <amanda.r.brindle@intel.com>, yocto@yoctoproject.org
References: <1506382892-1617-1-git-send-email-amanda.r.brindle@intel.com>
From: akuster <akuster@mvista.com>
Message-ID: <de690f3d-428d-0a09-20e4-5ffb26acd7f6@mvista.com>
Date: Mon, 25 Sep 2017 18:23:15 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1506382892-1617-1-git-send-email-amanda.r.brindle@intel.com>
Cc: paul.eggleton@linux.intel.com
Subject: Re: [layerindex][PATCH] Indicate if layer has YP Compatible certification
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
X-List-Received-Date: Tue, 26 Sep 2017 01:23:21 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 09/25/2017 04:41 PM, Amanda Brindle wrote:
> Allow admin to create Yocto Project versions with the version name,
> description, an icon link that represents that version, and a link that
> contains more information about the version.

Who are the Admins ?

- armin
>
> Admins who have the "set_yp_compatibility" permission can then
> decide if a layer has Yocto Project compatible certification,
> and if it does, admin can choose which version of Yocto Project
> the layer is compatible with. If a layer is deemed compatible,
> the version's icon will appear next to the layer's name, and
> the icon will redirect to the link with more information.
>
> Fixes [YOCTO #11452]
>
> Signed-off-by: Amanda Brindle <amanda.r.brindle@intel.com>
> ---
>  layerindex/admin.py                    | 11 +++++++++--
>  layerindex/models.py                   | 15 +++++++++++++++
>  layerindex/static/css/additional.css   |  5 +++++
>  templates/layerindex/detail.html       |  3 +++
>  templates/layerindex/layers.html       |  6 +++++-
>  templates/layerindex/reviewdetail.html |  3 +++
>  templates/layerindex/reviewlist.html   |  6 +++++-
>  7 files changed, 45 insertions(+), 4 deletions(-)
>
> diff --git a/layerindex/admin.py b/layerindex/admin.py
> index d25829a..a7d024b 100644
> --- a/layerindex/admin.py
> +++ b/layerindex/admin.py
> @@ -44,6 +44,9 @@ class BranchAdmin(CompareVersionAdmin):
>                      layerdependency.save()
>      duplicate.short_description = "Duplicate selected Branches"
>  
> +class YPCompatibleVersionAdmin(CompareVersionAdmin):
> +    pass
> +
>  class LayerItemAdmin(CompareVersionAdmin):
>      list_filter = ['status', 'layer_type']
>      save_as = True
> @@ -61,9 +64,12 @@ class LayerBranchAdmin(CompareVersionAdmin):
>          LayerMaintainerInline,
>      ]
>      def get_readonly_fields(self, request, obj=None):
> +        readonly_fields = self.readonly_fields
>          if obj:
> -            return self.readonly_fields + ('layer', 'branch')
> -        return self.readonly_fields
> +            readonly_fields += ('layer', 'branch')
> +        if not request.user.has_perm('layerindex.set_yp_compatibility'):
> +            readonly_fields += ('yp_compatible_version',)
> +        return readonly_fields
>  
>  class LayerMaintainerAdmin(CompareVersionAdmin):
>      list_filter = ['status', 'layerbranch__layer__name']
> @@ -145,6 +151,7 @@ class RecipeChangesetAdmin(admin.ModelAdmin):
>      ]
>  
>  admin.site.register(Branch, BranchAdmin)
> +admin.site.register(YPCompatibleVersion, YPCompatibleVersionAdmin)
>  admin.site.register(LayerItem, LayerItemAdmin)
>  admin.site.register(LayerBranch, LayerBranchAdmin)
>  admin.site.register(LayerMaintainer, LayerMaintainerAdmin)
> diff --git a/layerindex/models.py b/layerindex/models.py
> index fb2e026..2297152 100644
> --- a/layerindex/models.py
> +++ b/layerindex/models.py
> @@ -141,6 +141,17 @@ class LayerItem(models.Model):
>      def __str__(self):
>          return self.name
>  
> +class YPCompatibleVersion(models.Model):
> +    name = models.CharField('Yocto Project Version', max_length=25, unique=True, help_text='Name of this Yocto Project compatible version (e.g. "2.0")')
> +    description = models.TextField(blank=True)
> +    image_url = models.CharField('Image URL', max_length=300, blank=True)
> +    redirect_url = models.CharField('Redirection URL', max_length=100, blank=True)
> +
> +    class Meta:
> +        ordering = ('name',)
> +
> +    def __str__(self):
> +        return self.name
>  
>  class LayerBranch(models.Model):
>      layer = models.ForeignKey(LayerItem)
> @@ -152,11 +163,15 @@ class LayerBranch(models.Model):
>      vcs_last_rev = models.CharField('Last revision fetched', max_length=80, blank=True)
>      vcs_last_commit = models.DateTimeField('Last commit date', blank=True, null=True)
>      actual_branch = models.CharField('Actual Branch', max_length=80, blank=True, help_text='Name of the actual branch in the repository matching the core branch')
> +    yp_compatible_version = models.ForeignKey(YPCompatibleVersion, null=True, blank=True, on_delete=models.SET_NULL, help_text='Which version of the Yocto Project Compatible program has this layer been approved for for?')
>  
>      updated = models.DateTimeField(auto_now=True)
>  
>      class Meta:
>          verbose_name_plural = "Layer branches"
> +        permissions = (
> +            ("set_yp_compatibility", "Can set YP compatibility"),
> +        )
>  
>      def sorted_recipes(self):
>          return self.recipe_set.order_by('pn', '-pv')
> diff --git a/layerindex/static/css/additional.css b/layerindex/static/css/additional.css
> index 2a27712..324ee34 100644
> --- a/layerindex/static/css/additional.css
> +++ b/layerindex/static/css/additional.css
> @@ -232,3 +232,8 @@ blockquote.span7.warn {
>  .valign-middle {
>      vertical-align: middle;
>  }
> +
> +.yp-icon {
> +    width: auto;
> +    height: 1em;
> +}
> diff --git a/templates/layerindex/detail.html b/templates/layerindex/detail.html
> index 4f1b333..f721096 100644
> --- a/templates/layerindex/detail.html
> +++ b/templates/layerindex/detail.html
> @@ -30,6 +30,9 @@
>              <div class="row-fluid">
>                  <div class="page-header">
>                      <h1>{{ layeritem.name }}
> +                        {% if layerbranch.yp_compatible_version %}
> +                        <a href={{layerbranch.yp_compatible_version.redirect_url}}><img src={{layerbranch.yp_compatible_version.image_url}} alt={{layerbranch.yp_compatible_version.description}} class="yp-icon" title={{layerbranch.yp_compatible_version.description}} ></a>
> +                        {% endif %}
>                          {% if layeritem.status = "N" %}
>                              <span class="label label-warning">Unpublished</span>
>                          {% endif %}
> diff --git a/templates/layerindex/layers.html b/templates/layerindex/layers.html
> index b11ff2f..4d0d127 100644
> --- a/templates/layerindex/layers.html
> +++ b/templates/layerindex/layers.html
> @@ -72,7 +72,11 @@
>                  <tbody>
>                      {% for layerbranch in layerbranch_list %}
>                      <tr class="layertype_{{ layerbranch.layer.layer_type }}">
> -                        <td><a href="{% url 'layer_item' url_branch layerbranch.layer.name %}">{{ layerbranch.layer.name }}</a></td>
> +                        <td><a href="{% url 'layer_item' url_branch layerbranch.layer.name %}">{{ layerbranch.layer.name }}</a>
> +                            {% if layerbranch.yp_compatible_version %}
> +                            <a href={{layerbranch.yp_compatible_version.redirect_url}}><img src={{layerbranch.yp_compatible_version.image_url}} alt={{layerbranch.yp_compatible_version.description}} class="yp-icon" title={{layerbranch.yp_compatible_version.description}} ></a>
> +                            {% endif %}
> +                        </td>
>                          <td>{{ layerbranch.layer.summary }}</td>
>                          <td>{{ layerbranch.layer.get_layer_type_display }}</td>
>                          <td class="showRollie">
> diff --git a/templates/layerindex/reviewdetail.html b/templates/layerindex/reviewdetail.html
> index cff1731..e188632 100644
> --- a/templates/layerindex/reviewdetail.html
> +++ b/templates/layerindex/reviewdetail.html
> @@ -27,6 +27,9 @@
>              <div class="row-fluid">
>                  <div class="page-header">
>                      <h1>{{ layeritem.name }}
> +                        {% if layerbranch.yp_compatible_version %}
> +                        <a href={{layerbranch.yp_compatible_version.redirect_url }}><img src={{layerbranch.yp_compatible_version.image_url}} alt={{layerbranch.yp_compatible_version.description}} class="yp-icon" title={{layerbranch.yp_compatible_version.description}}></a>
> +                        {% endif %}
>                          {% if layeritem.status = "N" %}
>                              <span class="label label-warning">Unpublished</span>
>                          {% else %}
> diff --git a/templates/layerindex/reviewlist.html b/templates/layerindex/reviewlist.html
> index eaa24e4..0bc0602 100644
> --- a/templates/layerindex/reviewlist.html
> +++ b/templates/layerindex/reviewlist.html
> @@ -36,7 +36,11 @@
>                  <tbody>
>                      {% for layerbranch in layerbranch_list %}
>                      <tr class="layertype_{{ layerbranch.layer.layer_type }}">
> -                        <td><a href="{% url 'layer_review' layerbranch.layer.name %}">{{ layerbranch.layer.name }}</a></td>
> +                        <td><a href="{% url 'layer_review' layerbranch.layer.name %}">{{ layerbranch.layer.name }}</a> 
> +                            {% if layerbranch.yp_compatible_version %}
> +                            <a href={{layerbranch.yp_compatible_version.redirect_url}}><img src={{layerbranch.yp_compatible_version.image_url}} alt={{layerbranch.yp_compatible_version.description}} class="yp-icon" title={{layerbranch.yp_compatible_version.description}}></a>
> +                            {% endif %}
> +                        </td>
>                          <td>{{ layerbranch.layer.summary }}</td>
>                          <td>{{ layerbranch.layer.get_layer_type_display }}</td>
>                          <td class="showRollie">


