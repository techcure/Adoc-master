# Generated by Django 2.1.15 on 2020-11-12 20:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('doc', '0007_auto_20201112_2021'),
    ]

    operations = [
        migrations.AlterField(
            model_name='reg',
            name='name',
            field=models.CharField(blank=True, max_length=25, null=True),
        ),
    ]
